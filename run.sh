#!/usr/bin/env bash

#
# Cleanup + Update
#
docker-compose down
docker container prune -f
git pull
docker pull rossedlin/cryslo-10:1.13.2

#
# Start Server
#
docker-compose run --service-ports app $1