#!/bin/bash

docker build -t myapp .
docker rm -f myapp 2>/dev/null || true
docker run -d --name myapp --restart unless-stopped -p 8090:80 myapp
