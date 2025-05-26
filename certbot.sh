#!/bin/sh
#docker run -it --rm --name certbot -v "/home/sistemas/proxy/certs:/etc/letsencrypt/archive" certbot/certbot certonly --manual -d marcoslauder.com.br,casamento.marcoslauder.com.br,chatbotcasamento.marcoslauder.com.br,quandofoi.marcoslauder.com.br
docker stop proxy-nginx-1
docker run -it --rm --name certbot -p 80:80 -v "/home/sistemas/proxy/certs:/etc/letsencrypt" certbot/certbot certonly --standalone --force-renew -d marcoslauder.com.br,casamento.marcoslauder.com.br,chatbotcasamento.marcoslauder.com.br,quandofoi.marcoslauder.com.br  
docker start proxy-nginx-1
