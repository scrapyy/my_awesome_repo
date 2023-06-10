#!/bin/bash


sh build_push_image.sh "../apps/app_a" "scrapyy/app_a" "latest"
sh build_push_image.sh "../apps/app_b" "scrapyy/app_b" "latest"

docker network create my-network

docker rm --force auth-server
docker rm --force app-server

docker run -d --net my-network --name auth-server scrapyy/app_b:latest "sqlite3 database.db < /artifact/schema.sql && python3 -u /artifact/app_b.py"
docker run -d --net my-network --name app-server -e AUTH_SERVER='auth-server' -p 5002:5000 scrapyy/app_a:latest "python3 -u /artifact/app_a.py"