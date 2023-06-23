#!/bin/bash
cid="$(docker run -d -p 81:81 nginx)"
docker exec "$cid" apt-get update
docker exec "$cid" apt-get install -y gcc spawn-fcgi libfcgi-dev
docker cp ./main.c "$cid":/etc/nginx/
docker exec "$cid" gcc /etc/nginx/main.c -o /etc/nginx/main -l fcgi
docker exec "$cid" spawn-fcgi -p 8080 /etc/nginx/main
docker cp ./nginx.conf "$cid":/etc/nginx/
docker exec "$cid" nginx -s reload
