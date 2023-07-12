#!/bin/sh
docker run -it --rm --name certbot -v "/home/sistemas/proxy/certs:/etc/letsencrypt/archive" certbot/certbot certonly --manual -d marcoslauder.tech,casamento.marcoslauder.tech,chatbotcasamento.marcoslauder.tech
