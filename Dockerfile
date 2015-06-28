FROM node:latest

WORKDIR /src

MAINTAINER michaelmartinez@me.com

RUN  echo "    IdentityFile /root/.ssh/id_rsa" >> /etc/ssh/ssh_config
RUN  echo "    IdentityFile /root/.ssh/id_rsa" >> /root/ssh/ssh_config

ENTRYPOINT ["npm", "install"]

