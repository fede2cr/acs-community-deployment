FROM nginx:stable-alpine 

RUN apk add openssl

RUN mkdir -p /etc/nginx/tls

RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=newdomain.com" -addext "subjectAltName=DNS:newdomain.com" -newkey rsa:2048 -out /etc/nginx/tls/fullchain.pem -keyout /etc/nginx/tls/privkey.pem

