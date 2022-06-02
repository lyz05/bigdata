master=local[*]
filename=simple-project-1.0-SNAPSHOT-jar-with-dependencies.jar
submit_prehandler:$(filename)
	$(SPARK_HOME)/bin/spark-submit \
	--master $(master) \
	--class "cn.edu.bitzh.maven.prehandler" \
	./$(filename) \
	hdfs://hadoop100:9000/bigdata/*mirrors/*.gz hdfs://hadoop100:9000/bigdata/combine

submit_processhandler:$(filename)
	$(SPARK_HOME)/bin/spark-submit \
	--master $(master) \
	--class "cn.edu.bitzh.maven.processhandler" \
	./$(filename) \
	hdfs://hadoop100:9000/bigdata/combine root qwertyuiop
	
submit_sparkflume:$(filename)
	$(SPARK_HOME)/bin/spark-submit \
	--master $(master) \
	--class "cn.edu.bitzh.maven.Spark_Flume" \
	./$(filename) \
	0.0.0.0 44444

start_hadoop:start_hdfs start_yarn start_historyserver
	@echo " =================== 启动 hadoop 集群 ==================="
	@echo " --------------- 启动 hdfs ---------------"
	$(HADOOP_HOME)/sbin/start-dfs.sh
	@echo " --------------- 启动 yarn ---------------"
	$(HADOOP_HOME)/sbin/start-yarn.sh
	@echo " --------------- 启动 historyserver ---------------"
	$(HADOOP_HOME)/sbin/mr-jobhistory-daemon.sh start historyserver

start_spark:
	@echo " =================== 启动 spark 集群 ==================="
	@echo " --------------- 启动 spark ---------------"
	$(SPARK_HOME)/sbin/start-all.sh
	$(SPARK_HOME)/sbin/start-history-server.sh

# 启动Hadoop与Spark集群
start_all: start_hadoop start_spark

stop_hadoop:
	@echo " =================== 停止 hadoop 集群 ==================="
	@echo " --------------- 停止 hdfs ---------------"
	$(HADOOP_HOME)/sbin/stop-dfs.sh
	@echo " --------------- 停止 yarn ---------------"
	$(HADOOP_HOME)/sbin/stop-yarn.sh
	@echo " --------------- 停止 historyserver ---------------"
	$(HADOOP_HOME)/sbin/mr-jobhistory-daemon.sh stop historyserver

stop_spark:
	@echo " =================== 停止 spark 集群 ==================="
	@echo " --------------- 停止 spark ---------------"
	$(SPARK_HOME)/sbin/stop-all.sh
	$(SPARK_HOME)/sbin/stop-history-server.sh

# 停止Hadoop与Spark集群
stopall:stop_hadoop stop_spark


jpsall:
	for host in hadoop100 hadoop101 hadoop102; do \
		echo =============== $$host ===============; \
		ssh $$host "source /etc/profile;jps;"; \
	done


# 格式化NameNode
hdfsformat:
	$(HADOOP_HOME)/bin/hadoop namenode -format
	$(HADOOP_HOME)/bin/hadoop fs -mkdir /spark-log

sshkey:
	ssh-keygen -t rsa
	ssh-copy-id hadoop100
	ssh-copy-id hadoop101
	ssh-copy-id hadoop102

# HDFS集群监控 http://hadoop100:50070/
# HDFS文件系统 http://hadoop100:50070/dfshealth.jsp
# YARN集群监控 http://hadoop100:8088/
# Spark集群监控 http://hadoop100:8080/
# Spark master URL: http://hadoop100:7077/
# HDFS URL: http://hadoop100:9000/