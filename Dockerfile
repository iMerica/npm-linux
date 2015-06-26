FROM node:latest

MAINTAINER michaelmartinez@me.com

WORKDIR /src

ADD bin/npm.sh /src/bin/npm.sh

RUN apt-get update -y && \
    apt-get install build-essential -y && \
    apt-get install git -y && \
    chmod +x /src/bin/npm.sh

RUN ["chmod", "+x", "/src/bin/npm.sh"] 

ENTRYPOINT ["/src/bin/npm.sh"]

