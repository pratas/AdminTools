#!/bin/bash
BSIZE=536870912; # 512 GB
PMEDIA="/home"; #SET ANY
PMAIL="pratas@ua.pt"; # EMAIL
TIMER=60; # TIME IN SECONDS
for((;;));
  do
  AB=`df -la | grep $PMEDIA | awk '{ print $3; }'`;
  if [[ $AB -lt $BSIZE ]];
    then
    echo "WARNING: STORAGE SIZE EXCEEDED (LESS THAN 512 GB)" \
    | mail -s "STORAGE SIZE EXCEEDED!" "$PMAIL"
    fi
  sleep $TIMER;
  done
