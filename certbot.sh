#!/bin/sh
docker run -it --rm --name certbot -v "/home/sistemas/proxy/certs:/etc/letsencrypt/live/marcoslauder.tech" certbot/certbot certonly --manual -d marcoslauder.tech
