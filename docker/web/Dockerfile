FROM node:14.15.1-alpine3.10

ADD ./web/package.json /tmp/package.json
ADD ./web/yarn.lock /tmp/yarn.lock

WORKDIR /tmp

RUN yarn install

RUN mkdir -p /web

WORKDIR /web