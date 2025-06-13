#!/bin/bash
echo "Begin at $(date)"
sleep 3s
docker stop $(docker ps -q -a)
docker rm $(docker ps -q -a)
docker image rm $(docker images -q -a) -f
cd /home/fullertonj44/poly-maker
git pull
docker compose up -d
echo "Container started at $(date)"
