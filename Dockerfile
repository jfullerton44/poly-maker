FROM python:3.10.10-slim-buster

WORKDIR /app

RUN apt update -y && apt-get install -y python3-dev build-essential
RUN groupadd -r keeper && useradd -r -g keeper keeper

COPY requirements.txt .
COPY install.sh .
RUN ./install.sh

COPY . .
COPY bin bin

WORKDIR /app/bin
USER root