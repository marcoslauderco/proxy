#!/bin/sh
docker run -it --rm --name certbot -v "/home/sistemas/proxy/certs:/etc/letsencrypt/archive" certbot/certbot certonly --manual -d marcoslauder.com.br,casamento.marcoslauder.com.br,chatbotcasamento.marcoslauder.com.br
