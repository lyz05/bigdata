package cn.edu.bitzh.maven

import org.apache.spark.SparkContext
import org.apache.spark.broadcast.Broadcast
import org.apache.spark.rdd.RDD

object MyUtils {
  // IP数据库目录
  val src = "hdfs://hadoop100:9000/bigdata/tools/ip.txt"

  type MyIpTuple = (Long, Long, String, String, String, String, String, String)
  type MyIpArray = Array[MyIpTuple]

  def ip2Long(ip: String): Long = {
    if (ip.contains(":")) {
      return 0
    }
    val fragments = ip.split("[.]")
    var ipNum = 0L
    for (i <- 0 until fragments.length) {
      ipNum = fragments(i).toLong | ipNum << 8L
    }
    ipNum
  }

  def binarySearch(lines: MyIpArray, ip: Long): Int = {
    var low = 0
    var high = lines.length - 1
    while (low <= high) {
      val middle = (low + high) / 2
      if ((ip >= lines(middle)._1) && (ip <= lines(middle)._2))
        return middle
      if (ip < lines(middle)._1)
        high = middle - 1
      else {
        low = middle + 1
      }
    }
    -1
  }


  //处理csv提取有用字段
  def getRulesRDD(sc: SparkContext): RDD[MyIpTuple] = {
    val rulesLine = sc.textFile(src)
    val ipRulesRDD = rulesLine.map(line => line.replace("\"", "")).map(line => {
      val fields = line.split("[|]")
      val startNum = fields(2).toLong
      val endNum = fields(3).toLong
      val country = fields(5)
      val region_name = fields(6)
      val city_name = fields(7)
      val latitude = fields(14)
      val longitude = fields(13)
      val as = fields(9)
      (startNum, endNum, country, region_name, city_name, latitude, longitude, as)
    })
    ipRulesRDD
  }


  def initRules(sc: SparkContext): Broadcast[MyIpArray] = {
    // 整理ip規則數據
    val ipRulesRDD = MyUtils.getRulesRDD(sc)
    // 將分散在多個Executor中的部分IP規則數據收集到Driver端
    val rulesInDriver = ipRulesRDD.collect()
    // 將Driver端的數據廣播到Executor中
    // 調用sc上的廣播方法
    // 廣播變量的引用（還在Driver端中）
    val broadcastRef = sc.broadcast(rulesInDriver)
    broadcastRef
  }
}