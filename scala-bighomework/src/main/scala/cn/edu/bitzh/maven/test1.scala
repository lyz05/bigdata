package cn.edu.bitzh.maven

import org.apache.spark.sql.SparkSession
import org.apache.spark.{SparkConf, SparkContext}

//测试正则表达式解析
object test1 {
  //Spark初始化配置文件
  private val conf = new SparkConf().setAppName("test1").setMaster("local[*]")
  val sc = new SparkContext(conf)
  //设置spark日志级别
  sc.setLogLevel("WARN")
  private val spark = SparkSession.builder()
    .appName("test1")
    .getOrCreate()

  def main(args: Array[String]): Unit = {
    println("Hello world")
    val inj_str = "and,exec,insert,select,delete,update,count,*,%,chr,mid,master,truncate,char,declare,;,or,-,+,";
    val s = "2323&asnd&sdsd"
    println(s.matches("(.*?)(and|exec)(.*?)"))
  }

  def RegexTest(): Unit = {
    //取其中一条记录为例，分析，提取字段
    var s = "120.31.66.169 - - [30/Apr/2021:00:07:55 +0800] \"GET /platform/frameworks/opt/car/setupwizard/info/refs?service=git-upload-pack HTTP/1.1\" 301 185 \"text/html\" \"-\" \"git/2.7.4 (Linux) git-repo/2.13.8\" - http"
    val pattern = "^(.*?) - (.*?) \\[(.*?)\\] \"(.*?)\" (\\d+) (\\d+) \"(.*?)\" \"(.*?)\" \"(.*?)\" - (.*?)$".r.unanchored
    val pattern(ip, user, time, request, status, bytes, http_content_type, referer, ua, scheme) = s
    println("单行记录解析结果")
    println(ip, time, request, status, bytes, http_content_type, referer, ua, scheme)
    //单行异常数据处理
    //异常数据为本应该为两行记录的数据被合并到一行，需要找到特征处理
    s = "210.21.223.158 - - [30/Apr/2021:19:08:17 +0800] \"GET /platform/external/libcap/info/refs?service=git-upload-pack HTTP/1.1\"210.21.223.6 - - [30/Apr/2021:19:10:16 +0800] \"GET /platform/external/python/pyparsing/info/refs?service=git-upload-pack HTTP/1.1\" 200 37865 \"application/x-git-upload-pack-advertisement\" \"-\" \"git/2.1.4\" - https"
  }
}
