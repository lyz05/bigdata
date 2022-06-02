package cn.edu.bitzh.maven

import org.apache.spark._
import org.apache.spark.storage.StorageLevel
import org.apache.spark.streaming._
import org.apache.spark.streaming.flume._
import org.apache.spark.streaming.StreamingContext._

object testsparkstreaming {

  private val host = "localhost"
  private val port = 44444

  def main(args: Array[String]): Unit = {
    //Spark初始化配置文件
    val conf = new SparkConf().setAppName("testsparkstreaming").setMaster("local[*]")
    val ssc = new StreamingContext(conf, Seconds(2))
    val sc = ssc.sparkContext
    sc.setLogLevel("WARN")
    flume(ssc)
    ssc.start()             // Start the computation
    ssc.awaitTermination()  // Wait for the computation to terminate
  }

  def flume(ssc:StreamingContext): Unit ={
    val stream = FlumeUtils.createStream(ssc,host,port,StorageLevel.MEMORY_ONLY_SER_2,false)
    stream.count().map(cnt => "Received "+ cnt + " flume events.").print()
  }

  def wordcount(ssc:StreamingContext): Unit ={
    // Create a DStream that will connect to hostname:port, like localhost:9999
    val lines = ssc.socketTextStream("localhost", 9999)
    // Split each line into words
    val words = lines.flatMap(_.split(" "))
    // Count each word in each batch
    val pairs = words.map(word => (word, 1))
    val wordCounts = pairs.reduceByKey(_ + _)
    // Print the first ten elements of each RDD generated in this DStream to the console
    wordCounts.print()
  }
}
