package cn.edu.bitzh.maven

import org.apache.spark.rdd.RDD
import org.apache.spark.sql.{SQLContext, SparkSession}
import org.apache.spark.{SparkConf, SparkContext}

import java.text.SimpleDateFormat
import java.util.Locale

// 离线数据预处理（数据入库）
object prehandler_bak {

  //设置程序基本运行信息
  //private val srcfile = "hdfs://master:9000/bigdata"
  private var srcfile = "file:///D:/bigdata/*mirrors/*.gz"
  private var dstfile = "file:///D:/bigdata/combine"
  private val appname = "preHandler"
  private val loglevel = "WARN"

  // 注意：case class必须定义在main方法之外；否则会报错
  case class Row(ip: String,
                 user: String,
                 time: Long,
                 http_method: String,
                 http_path: String,
                 http_version: String,
                 http_path_depth: Long,
                 status: Long,
                 bytes: Long,
                 http_content_type: String,
                 MIME_type: String,
                 referer: String,
                 os: String,
                 scheme: String,
                 as: String,
                 country_name: String,
                 region_name: String,
                 city_name: String
                )

  def tranTimeToLong(tm: String): Long = {
    val fm = new SimpleDateFormat("dd/MMM/yyyy:HH:mm:ss Z", Locale.ENGLISH)
    val dt = fm.parse(tm)
    val aa = fm.format(dt)
    val tim: Long = dt.getTime() / 1000
    tim
  }

  def readRdd(sc: SparkContext, src: String): RDD[String] = {
    //读取所有日志数据合并成一个RDD,并对无法解析的行进行过滤
    val linesRaw = sc.textFile(src)
    //  .coalesce(1) // 生成为1个文件
    println("日志文件总行数(过滤前)：" + linesRaw.count())
    val lines = linesRaw
      //过滤非法数据
      .filter {
        x => {
          val arr = x.split(" - - ")
          val len = arr(0).length - arr(0).replace(".", "").length
          val ret = arr.length == 2 && ((len == 3 && arr(0).length < 16) || arr(0).contains(":"))
          ret
        }
      }
    println("日志文件总行数(过滤后)：" + lines.count())

    lines
  }

  def generateDF(sc: SparkContext, spark: SparkSession, lines: RDD[String]): org.apache.spark.sql.DataFrame = {

    //    提取每行记录的字段
    val processRDD = lines.map {
      x => {
        //正则表达式
        val pattern = "^(.*?) - (.*?) \\[(.*?)\\] \"(.*?)\" (\\d+) (\\d+) \"(.*?)\" \"(.*?)\" \"(.*?)\" - (.*?)$".r.unanchored
        val pattern(ip, user, time, request, status, bytes, http_content_type, referer, ua, scheme) = x
        //request处理
        var requests = request.split(" ", 3)
        //400错误情况下requests中没有内容
        if (requests.length < 3) {
          requests = Array("-", "-", "-")
        }

        //val program = ua.split(" ")(0).split('/')
        var os = "-"
        if (ua.contains("Windows NT")) {
          os = "Windows"
        } else if (ua.contains("Darwin")) {
          os = "Apple"
        } else if (ua.contains("Linux")) {
          os = "Linux"
        } else if (ua.contains("bot")) {
          os = "bot"
        }
        //time处理
        val timestamp = tranTimeToLong(time)

        // 查找
        val country = "-"
        val region_name = "-"
        val city_name = "-"
        val asname = "-"

        //处理url路径长度
        val http_path = requests(1)
        val http_path_depth = http_path.split('/').length

        //分割content_type
        val MIME_type = http_content_type.split('/')(0)

        //println(x)
        (ip, user, timestamp, requests(0), requests(1), requests(2), http_path_depth, status.toLong, bytes.toLong, http_content_type, MIME_type, referer, os, scheme, asname, country, region_name, city_name)
      }
    }
    //println("提取字段解析为数组类型")
    //    RDD[Array[String]]转DataFrame
    import spark.implicits._
    val df = processRDD.map(x => Row(x._1, x._2, x._3, x._4, x._5, x._6, x._7, x._8, x._9, x._10, x._11, x._12, x._13, x._14, x._15, x._16, x._17, x._18)) //将rdd的每一行都转换成了一个people
      .toDF //必须先导入import spark.implicits._  不然这个方法会报错

    df
  }

  def main(args: Array[String]) {
    //从命令行中获取文件源目录与目标目录
    if (args.length < 2) {
      println("Usage: prehandler <srcfile> <dstfile>")
      System.exit(1)
    }
    srcfile = args(0)
    dstfile = args(1)

    //Spark初始化配置文件
    val conf = new SparkConf().setAppName(appname)
    val sc = new SparkContext(conf)
    //设置spark日志级别
    sc.setLogLevel(loglevel)
    val spark = SparkSession.builder()
      .appName(appname)
      //.config("spark.some.config.option", "some-value")
      .getOrCreate()


    val lines = readRdd(sc, srcfile)
    //查看前10行记录
    println("日志文件前10行数据")
    lines.take(10).foreach(println)
    val df = generateDF(sc, spark, lines)
    println("日志文件格式化后的DataFrame前20行数据")
    df.show()

    //写入DataFrame
    df.write.format("parquet")
      .mode("overwrite")
      .option("header", "true")
      .save(dstfile)
    sc.stop()
  }

}
