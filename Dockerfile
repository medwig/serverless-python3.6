# Starts with base Terraform image on Alpine Linux
FROM node:lts-alpine

RUN apk update 

# Install bash
RUN apk add --no-cache bash

# Install jq
RUN apk add jq

# Install node and npm
RUN apk add nodejs nodejs-npm

# Install python3.6
RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
rm -r /root/.cache

# Install serverless framework
RUN npm install -g serverless

# Install aws cli
RUN pip install awscli --upgrade

WORKDIR /home
