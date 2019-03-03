FROM node:8.4.0

# ENV HOME .
# WORKDIR ${HOME}

COPY . .

# RUN openssl req -x509 -sha256 -nodes \
#     -days 365 -newkey rsa:2048 -keyout key.pem -out \ 
#     cert.pem

RUN npm i -g http-server
#RUN apt-get install -y npm 
#&& \
 #   npm start

EXPOSE 8080
ENTRYPOINT sh start_script.sh

