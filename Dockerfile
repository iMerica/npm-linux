FROM node:latest

MAINTAINER michaelmartinez@me.com

RUN mkdir /usr/local/bin/lnmp.sh && \
    echo -e '#!/bin/bash\nnpm install' > /usr/local/bin/lnmp.sh && \
    chmod +x  /usr/local/bin/lnmp.sh

ENTRYPOINT ["/usr/local/bin/lnmp.sh"]

