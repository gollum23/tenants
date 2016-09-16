#!/usr/bin/env bash

! docker network create -d bridge tenant > /dev/null 2>&1
case "$(uname -s)" in

   Darwin)
     export DOCKER_IP=`docker-machine ip dinghy`
     ;;

   Linux)
     export DOCKER_IP='localhost'
     ;;
   *)
     export DOCKER_IP='localhost'
     ;;
esac
export TENANT_FOLDER=`pwd`
echo $TENANT_FOLDER
echo $DOCKER_IP
make start-dev
