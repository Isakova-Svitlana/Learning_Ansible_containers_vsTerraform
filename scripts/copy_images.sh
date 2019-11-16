#!/bin/bash
# For parameters $1 - directory $2:$3 name:buildnumber $4 server $5 - directory on server host
scp -oStrictHostKeyChecking=no /home/buildagent/images/$1/$2:$3.tar $4:/home/buildserver/microservices/$5
server="ssh -G production | awk '/^hostname / { print $2 }'"
ssh $4 /bin/bash docker.sh $2 $3 $server