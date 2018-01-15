FROM mhart/alpine-node:6.5

MAINTAINER Aurélien Hervé <mail@aurelien-herve.com>

RUN mkdir /app
WORKDIR /app

RUN npm install -g nodemon typescript tslint mocha yarn

ADD ./package.json .
ADD ./yarn.lock .
RUN yarn
