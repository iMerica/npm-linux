FROM node:latest

WORKDIR /src

MAINTAINER michaelmartinez@me.com

ENTRYPOINT ["npm", "install"]

