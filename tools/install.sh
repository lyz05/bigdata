#!/bin/sh
# Script for Ubuntu 20.04 user@[hostname]
#curl https://gd.home999.cc/0:/Inbox/tools/install.sh | bash

# Install Dependencise
sudo apt update
sudo apt install python3-pip docker docker-compose net-tools -y
pip3 install bs4

# Download Hadoop and Spark environment
mkdir -p ~/tools
wget -c https://gd.home999.cc/0:/Inbox/tools/jdk-8u221-linux-x64.tar.gz -O ~/tools/jdk-8u221-linux-x64.tar.gz
wget -c https://gd.home999.cc/0:/Inbox/tools/hadoop-2.6.5.tar.gz -O ~/tools/hadoop-2.6.5.tar.gz
wget -c https://gd.home999.cc/0:/Inbox/tools/spark-2.4.0-bin-hadoop2.6.tgz -O ~/tools/spark-2.4.0-bin-hadoop2.6.tgz
cd ~/tools
tar -zxf jdk-8u221-linux-x64.tar.gz
tar -zxf hadoop-2.6.5.tar.gz
tar -zxf spark-2.4.0-bin-hadoop2.6.tgz

# Modified some files
# spark
wget https://gd.home999.cc/0:/Inbox/tools/spark-2.4.0-bin-hadoop2.6/conf/slaves -O ~/tools/spark-2.4.0-bin-hadoop2.6/conf/slaves
wget https://gd.home999.cc/0:/Inbox/tools/spark-2.4.0-bin-hadoop2.6/conf/spark-env.sh -O ~/tools/spark-2.4.0-bin-hadoop2.6/conf/spark-env.sh
wget https://gd.home999.cc/0:/Inbox/tools/spark-2.4.0-bin-hadoop2.6/conf/spark-defaults.conf -O ~/tools/spark-2.4.0-bin-hadoop2.6/conf/spark-defaults.conf
# hadoop
cd ~/tools/hadoop-2.6.5
mkdir tmp
mkdir dfs
mkdir dfs/name
mkdir dfs/node
mkdir dfs/data
wget -t 0 https://gd.home999.cc/0:/Inbox/tools/hadoop-2.6.5/etc/hadoop/core-site.xml -O ~/tools/hadoop-2.6.5/etc/hadoop/core-site.xml
wget https://gd.home999.cc/0:/Inbox/tools/hadoop-2.6.5/etc/hadoop/hadoop-env.sh -O ~/tools/hadoop-2.6.5/etc/hadoop/hadoop-env.sh
wget https://gd.home999.cc/0:/Inbox/tools/hadoop-2.6.5/etc/hadoop/hdfs-site.xml -O ~/tools/hadoop-2.6.5/etc/hadoop/hdfs-site.xml
wget https://gd.home999.cc/0:/Inbox/tools/hadoop-2.6.5/etc/hadoop/mapred-site.xml -O ~/tools/hadoop-2.6.5/etc/hadoop/mapred-site.xml
wget -t 0 https://gd.home999.cc/0:/Inbox/tools/hadoop-2.6.5/etc/hadoop/slaves -O ~/tools/hadoop-2.6.5/etc/hadoop/slaves
wget https://gd.home999.cc/0:/Inbox/tools/hadoop-2.6.5/etc/hadoop/yarn-site.xml -O ~/tools/hadoop-2.6.5/etc/hadoop/yarn-site.xml
# Environment variables
sudo wget https://gd.home999.cc/0:/Inbox/tools/profile -O /etc/profile
source /etc/profile

# Modified hosts
sudo tee /etc/hosts <<-'EOF'
100.102.100.110  hadoop100
100.102.100.111  hadoop101
100.102.100.112  hadoop102
100.102.100.110  mysql
EOF

startproject() {
spark-submit \
--class prehandler \
--master yarn \
-deploy-mode client \
~/simple-project-1.0.jar

spark-submit \
--driver-class-path /opt/spark-2.4.7-bin-hadoop2.7/jars/*:/opt/spark-2.4.7-bin-hadoop2.7/jars/flume/* \
--class "cn.edu.bitzh.maven.Spark_Flume" \
simple-project-1.0-SNAPSHOT-jar-with-dependencies.jar localhost 44444
}