FROM node:8.4.0

ENV HOME .
WORKDIR ${HOME}

COPY . .

RUN openssl req -x509 -sha256 -nodes \
    -days 365 -newkey rsa:2048 -keyout key.pem -out \ 
    cert.pem

RUN apt-get install -y npm && \
    npm run

    -keyout key.pem -out cert.pem

    openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem
    
EXPOSE 8080
ENTRYPOINT ["/start_scrip.sh"]

