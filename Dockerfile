FROM node:4.2.2-slim

RUN apt-get update && apt-get install -y \
  python \
  libicu-dev \
  libxml2-dev \
  libexpat1-dev \
  build-essential \
  git \
  make

COPY . /app
RUN cd /app; npm install --production; npm cache clean

RUN apt-get -y remove \
  libicu-dev \
  libxml2-dev \
  libexpat1-dev \
  build-essential \
  git \
  make

RUN apt-get -y autoremove

RUN apt-get -y clean
RUN apt-get -y purge

EXPOSE 8080
CMD ["/app/bin/hubot"]
