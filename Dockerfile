FROM arm32v7/node:13.1.0-alpine

MAINTAINER "atmosx"
LABEL name="smee-client"
LABEL platform="arm32v7"
LABEL version="0.1"
LABEL description="Reverse proxy accepting github webhooks behind firewalls/NAT. Dockerized version of smee-client for arm32v7"
LABEL website="https://smee.io"

# smee-client version
ENV VERSION 1.1.0

WORKDIR /smee
RUN npm install smee-client@$VERSION
COPY smee-client.js /smee/smee-client.js
USER nobody
ENTRYPOINT [ "node", "/smee/smee-client.js" ]
