#!/bin/bash
cd /home/fullertonj44/polymarket_bot
echo "Begin at $(date)"
sleep 30s
docker start $(docker ps -q -a)
echo "Container started at $(date)"