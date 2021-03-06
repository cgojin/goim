#!/bin/bash
# config parameters
JDK_HOME=/usr/local/jdk8/
# download jdk
curl -L https://mirrors.huaweicloud.com/java/jdk/8u191-b12/jdk-8u191-linux-x64.tar.gz -o jdk-8u191-linux-x64.tar.gz
tar zxf jdk-8u191-linux-x64.tar.gz 
# install jdk
mkdir -p $JDK_HOME
mv jdk1.8.0/* $JDK_HOME
update-alternatives --install "/usr/bin/java" "java" "$JDK_HOME/bin/java" 1500
update-alternatives --install "/usr/bin/javac" "javac" "$JDK_HOME/bin/javac" 1500
update-alternatives --install "/usr/bin/javaws" "javaws" "$JDK_HOME/bin/javaws" 1500
