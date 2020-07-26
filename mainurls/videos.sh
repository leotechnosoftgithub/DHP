#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/swapnil  http://67.205.178.30/ips/swapnil
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/swapnil`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./swapnil.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job job1 completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
