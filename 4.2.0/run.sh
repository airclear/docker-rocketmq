#!/bin/bash

sudo docker run -d -p 9876:9876 --name rmqnamesrv -e "JAVA_OPT_EXT=-Xms1g -Xmx1g -Xmn500m" apache/rocketmq-namesrv:4.2.0

sudo docker run -d -p 10911:10911 -p 10909:10909 --name rmqbroker --link rmqnamesrv:rmqnamesrv -e "NAMESRV_ADDR=rmqnamesrv:9876" -e "JAVA_OPT_EXT=-Xms1g -Xmx1g -Xmn500m" apache/rocketmq-broker:4.2.0
