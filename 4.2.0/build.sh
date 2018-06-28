#!/bin/bash

sudo docker build -t apache/rocketmq-namesrv:4.2.0 ./namesrv

sudo docker build -t apache/rocketmq-broker:4.2.0 ./broker
