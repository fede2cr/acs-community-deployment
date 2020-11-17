#!/usr/bin/env bash

git clone https://github.com/Greencorecr/acs-community-deployment.git
cd acs-community-deployment
cd docker-compose
sudo ../fixperms.sh
sudo openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=newdomain.com" -addext "subjectAltName=DNS:newdomain.com" -newkey rsa:2048 -out volumes/data/certs/conf/fullchain.pem -keyout volumes/data/certs/conf/privkey.pem
docker-compose up -d
docker-compose logs
