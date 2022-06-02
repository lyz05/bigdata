package cn.edu.bitzh.maven

import org.apache.spark.sql.{SQLContext, SparkSession}
import org.apache.spark.sql.functions.{desc, _}
import org.apache.spark.{SparkConf, SparkContext}

//数据分析，用于可视化
object processhandler {

  //设置程序基本运行信息
  private val DEBUG = false
  private var srcfile = "file:///D:/bigdata/combine"
  private var mysql_user = ""
  private var mysql_pass = ""
  private val mysql_url = "jdbc:mysql://hadoop100:3306/bigdata?useUnicode=true&characterEncoding=utf-8"
  private val appname = "processHandler"
  private val loglevel = "INFO"
  private val prop = new java.util.Properties()
  //Spark初始化配置文件
  private val conf = new SparkConf().setAppName(appname)
  val sc = new SparkContext(conf)
  sc.setLogLevel(loglevel)
  private val spark = SparkSession.builder()
    .appName(appname)
    .getOrCreate()
  val sqlContext = new SQLContext(sc)
  spark.conf.set("spark.sql.session.timeZone", "UTC")

  case class Num(name: String, num: Long)

  def readDF(src: String): org.apache.spark.sql.DataFrame = {
    sqlContext.read.load(src)
  }

  def showAndWriteTable(df: org.apache.spark.sql.DataFrame, tablename: String) {
    println("表 " + tablename)
    df.show()
    //    df.withColumn("id", monotonically_increasing_id)
    println("共 " + df.count() + " 行")
    df.write.option("truncate", "true").mode("overwrite").jdbc(mysql_url, tablename, prop)
  }

  def convert(time: Long): String = {
    val sdf = new java.text.SimpleDateFormat("yyyy-MM-dd")
    sdf.format(new java.util.Date(time))
  }

  def main(args: Array[String]) {
    if (args.length < 3) {
      println("Usage: processhandler <srcfile>")
      System.exit(1)
    }
    srcfile = args(0)
    mysql_user = args(1)
    mysql_pass = args(2)

    //mysql配置信息
    prop.put("driver", "com.mysql.cj.jdbc.Driver")
    prop.put("user", mysql_user)
    prop.put("password", mysql_pass)
    sqlContext.udf.register("convert", convert _)

    val df = readDF(srcfile)
    //    df.printSchema()
    //    df.show(30)
    // Register the DataFrame as a SQL temporary view
    df.createOrReplaceTempView("log")

    if (DEBUG) {
      var ans = df.select(col("time"),col("os").as("metric"))
        .groupBy(col("time"),col("metric"))
        .count()
      ans.show(false)
      ans = df.select(col("time").divide(3600).*(3600).as("time_hour"),col("os").as("metric"))
        .groupBy(col("time_hour"),col("metric"))
        .count()
      ans.show(false)
      return
    }

    //整个DataFrame表前100项
    var ans = df.limit(100)
    showAndWriteTable(ans, "df")

    //来源操作系统折线图(饼图-来源操作系统)
    ans = spark.sql("SELECT time div 3600*3600 AS `time`,os AS metric,count(*) AS value FROM log GROUP BY time div 3600*3600,os")
    showAndWriteTable(ans, "grafana_os")

    //https安全协议访问占比(middlechart)精确到小时
    ans = spark.sql("SELECT time div 3600*3600 AS `time`,scheme AS metric,count(*) AS value FROM log GROUP BY time div 3600*3600,scheme")
    showAndWriteTable(ans, "grafana_https")

    //#1 找出高频访问时间，统计波峰波谷，为负载均衡提供决策依据
    val sqlDF = spark.sql("SELECT time div 3600*3600 AS `time`,SUM(bytes) as sum,COUNT(*) as count FROM log GROUP BY time div 3600*3600")
    showAndWriteTable(sqlDF, "grafana_views")

    //请求方法占比图(柱状图-请求方法占比)
    ans = df.groupBy("http_method").count().sort(desc("count"))
    showAndWriteTable(ans, "method")

    //请求状态占比(南丁格尔图-请求状态占比)
    ans = df.groupBy("status").count()
    showAndWriteTable(ans, "status")

    //地理位置统计
    ans = df.groupBy("region_name", "city_name", "latitude", "longitude", "as").count()
    showAndWriteTable(ans, "region")

    //状态码>=5XX的dataframe
    ans = df.where(col("status") >= 500)
      .groupBy("http_method", "http_path", "status")
      .count()
      .orderBy(col("count").desc)
    showAndWriteTable(ans, "grafana_df_err")

    //访问量排名前10url
    ans = df.groupBy("http_path", "referer")
      .count()
      .orderBy(col("count").desc)
      .limit(10)
    showAndWriteTable(ans, "grafana_top_url")

    //路径深度排名
    ans = df.select("http_path", "http_path_depth")
      .orderBy(col("http_path_depth").desc)
      .limit(10)
    showAndWriteTable(ans, "grafana_top_depth")

    //大文件统计
    ans = df.select("http_method", "http_path", "bytes", "http_content_type")
      .orderBy(col("bytes").desc)
      .limit(10)
    showAndWriteTable(ans, "grafana_top_bytes")

    //MIME_type聚合占比
    ans = df.groupBy("MIME_type").count()
    showAndWriteTable(ans, "MIME_type")

    //请求参数中危险字符匹配(前100项)
    val inj_str = "and|exec|insert|select|delete|update|count|chr|mid|master|truncate|char|declare|or"
    val xss_inj_str = "alert|img|script|document|document\\.title|document\\.write|eval|prompt|onclick|onerror|onmouseenter|onreadystatechange|confirm|javascript|String.fromCharCode|onload|DYNSRC|LOWSRC|behavior|vbscript|msgbox|mocha|livescript|expression"
    ans = df.select("http_path").groupBy("http_path").count().filter(col("http_path").rlike(s"(.*?)\\?(.*?)($inj_str|$xss_inj_str)(.*?)"))
    showAndWriteTable(ans.limit(100), "grafana_illegal_http_path")

    //请求参数中包含危险字符的日志数量
    import spark.implicits._
    val num1 = Num("illegal_http_path",ans.count())
    ans = Seq(num1).toDF
    showAndWriteTable(ans, "grafana_num")
  }
}

