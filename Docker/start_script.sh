#!/usr/bin/env bash

openssl genrsa -des3 -passout pass:x -out server.pass.key 2048
openssl rsa -passin pass:x -in server.pass.key -out server.key
rm server.pass.key
openssl req -new -key server.key -out server.csr \
    -subj "/C=DE/ST=BW/L=Karlsruhe/O=ScaleIT/OU=IT D/CN=example.com"
openssl x509 -req -days 365 -in server.csr -signkey server.key -keyout key.pem -out cert.pem # server.crt

npm i -g http-server
npm start

exit 0