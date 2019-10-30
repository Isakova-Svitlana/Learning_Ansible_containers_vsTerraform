#!/bin/bash

#!/bin/bash

#$1 - name image
#$2 - tag image
name=$1
numb=$2

old="$(docker ps --all --quiet --filter=name="$name:*")"

if [ -n "$old" ]; then
  docker stop $old && docker rmi $(docker images | grep $1 | awk '{print $3}') --force
fi

if [ $1 == "mgdb" ]
  then
    docker load -i microservices/mongodb/$1:$2.tar
    docker run -d --rm -p 27017:27017 --name=mongodb $1:$2
  fi

if [ $1 == "frontend" ]
  then
    docker load -i microservices/mysql/$1:$2.tar
  fi