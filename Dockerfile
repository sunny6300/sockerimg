FROM ubuntu:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN apt-get update

RUN apt-get install trivy

RUN trivy