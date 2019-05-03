# Starts with base Terraform image on Alpine Linux
FROM python:3.6-stretch

RUN apt update 

# Install zip
RUN apt-get install -y zip

# Install jq
RUN apt-get install -y jq

# Install node and npm
RUN apt-get install -y curl software-properties-common
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

# Install dev tools
RUN apt install gcc g++ make

# Install serverless framework
RUN npm install -g serverless
 
# # Install aws cli
RUN pip install awscli --upgrade

WORKDIR /home

