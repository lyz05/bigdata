package cn.edu.bitzh.maven

import org.apache.spark.sql.functions.lit
import org.apache.spark.sql.types._
import org.apache.spark.sql.{DataFrame, SQLContext, SparkSession}
import org.apache.spark.{SparkConf, SparkContext}

object test_ip {
  def Dot2LongIP(ipstring: String): Long = {
    //判断是否为IPV6
    if (ipstring.contains(":")) {
      0
    } else {
      val ipAddressInArray = ipstring.split("\\.")
      var result = 0L
      for (x <- 3 to 0 by -1) {
        val ip = ipAddressInArray(3 - x).toLong
        result |= ip << (x << 3)
      }
      result
    }
  }

  //有关ip数据库的函数
  private val ipsch = StructType(
    StructField("ip_from", LongType) ::
      StructField("ip_to", LongType) ::
      StructField("country_code", StringType) ::
      StructField("country_name", StringType) ::
      StructField("region_name", StringType) ::
      StructField("city_name", StringType) ::
      StructField("latitude", DoubleType) ::
      StructField("longitude", DoubleType) ::
      Nil
  )

  private val asnsch = StructType(
    StructField("ip_from", LongType) ::
      StructField("ip_to", LongType) ::
      StructField("cidr", StringType) ::
      StructField("asn", IntegerType) ::
      StructField("as", StringType) ::
      Nil
  )

  def getipinfo(sqlContext:SQLContext):DataFrame = {
    val ipdf = sqlContext.read.schema(ipsch).format("csv").load("file:///D:/bigdata/tools/IP2LOCATION-LITE/IP2LOCATION-LITE-DB5.csv")
    //val asndf = sqlContext.read.schema(asnsch).format("csv").load("file:///D:/bigdata/tools/IP2LOCATION-LITE/IP2LOCATION-LITE-ASN.CSV")

    val ipnum = Dot2LongIP("113.140.20.47")
    //val asnds = asndf.select("as").filter(s"(ip_from <= $ipnum) AND (ip_to >= $ipnum)")
    val ipds = ipdf.select("country_name", "region_name", "city_name", "latitude", "longitude").filter(s"(ip_from <= $ipnum) AND (ip_to >= $ipnum)")
    var list1 = ipds.toDF("country_name", "region_name", "city_name", "latitude", "longitude")
    //list1 = list1.withColumn("as", lit(asnds.first().get(0)))
    //list1.printSchema()
    return list1
  }

  def main(args: Array[String]): Unit = {
    //Spark初始化配置文件
    val conf = new SparkConf().setAppName("test_ip").setMaster("local[*]")
    val sc = new SparkContext(conf)
    //设置spark日志级别
    sc.setLogLevel("WARN")
    val spark = SparkSession.builder()
      .appName("test")
      //.config("spark.some.config.option", "some-value")
      .getOrCreate()
    val sqlContext = new SQLContext(sc)

    getipinfo(sqlContext).show(false)

  }
}
