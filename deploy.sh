#!/usr/bin/env bash
docker stop web-app
docker rm web-app
docker rmi web-app
docker build -t web-app:latest  .
docker run --name some-web-app --restart unless-stopped -d -p 4071:80 web-app:latest
