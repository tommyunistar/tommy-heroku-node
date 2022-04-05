FROM node:12
ARG port
USER root

ENV PORT=$port

WORKDIR /app
ADD index.js package.json ./

RUN npm install
CMD node index.js

EXPOSE $PORT


#FROM python:3.8-slim
#ARG port
#
#USER root
#COPY . /<your-app>
#WORKDIR /<your-app>
#
#ENV PORT=$port
#
#RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
#    && apt-get -y install curl \
#    && apt-get install libgomp1
#
#RUN chgrp -R 0 /<your-app> \
#    && chmod -R g=u /<your-app> \
#    && pip install pip --upgrade \
#    && pip install -r requirements.txt
#EXPOSE $PORT
#
#CMD gunicorn app:server --bind 0.0.0.0:$PORT --preload
