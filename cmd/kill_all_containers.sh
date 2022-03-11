#!/bin/bash


d=`date '+%Y-%m-%d %H:%M:%S'`
d2=`date '+%Y-%m-%d'`

echo "Stop all ddos"
echo "$d docker kill $(docker ps -q)"  >> "$d2".log
docker kill $(docker ps -q)