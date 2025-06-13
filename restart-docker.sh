#!/bin/bash
docker restart $(docker ps -q -a)
echo "restart done $(date)"
