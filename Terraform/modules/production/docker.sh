#!/bin/bash

name_old=$1
#name_new=$2

#if test ! -z "$(docker images -q <name_old:*>)"; then
#  echo "Exist"
#fi
old = "$(docker ps --all --quiet --filter=name="$name_old:*")"

if [ -n "$old" ]; then
  docker stop $old && docker rm $old && docker rmi $(docker images -q <name_old:*>)
fi
