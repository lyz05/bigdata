package cn.edu.bitzh.maven
import org.apache.spark.SparkConf
import org.apache.spark.SparkContext
import org.apache.spark.sql.SparkSession
import org.apache.spark.storage.StorageLevel
import org.apache.spark.streaming.Seconds
import org.apache.spark.streaming.StreamingContext
import org.apache.spark.streaming.flume.FlumeUtils


object Spark_Flume {
  def main (args : Array[String]) {
    if(args.length < 2) {
      println("Usage: Spark_Flume <hostname> <port>")
      System.exit(1)
    }

    val hostname = args(0)
    val port = Integer.parseInt(args(1))


    val sc = new SparkContext(new SparkConf().setAppName("Spark_Flume").setMaster("local[*]"))
    sc.setLogLevel("WARN")
    val ssc = new StreamingContext(sc, Seconds(2))
    val flumeStream = FlumeUtils.createStream(ssc, hostname, port,StorageLevel.MEMORY_AND_DISK)

    val processDStream = flumeStream.map(e => {
      //正则表达式
      val x = new String(e.event.getBody.array)
      val pattern = "^(.*?) - (.*?) \\[(.*?)\\] \"(.*?)\" (\\d+) (\\d+) \"(.*?)\" \"(.*?)\" \"(.*?)\" - (.*?)$".r.unanchored

      val pattern(ip, user, time, request, status, bytes, http_content_type, referer, ua, scheme) = x
      Array(ip, user, time, request, status, bytes, http_content_type, referer, ua, scheme)

    }).filter(
      x => x(4).toInt>=400
    )
    processDStream.foreachRDD(
      rdd => {
        rdd.foreach(
          record => {
            println(record.mkString("|"))
          }
        )
      }
    )
    flumeStream.count().map(cnt => "Received "+ cnt + " flume events.").print()
    processDStream.count().map(cnt => "Filter "+ cnt + " flume events.").print()
    ssc.start()
    ssc.awaitTermination()
  }
}