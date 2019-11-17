FROM arm64v8/node

MAINTAINER "atmosx"
LABEL name="smee-client"
LABEL platform="arm64v8"
LABEL version="0.1"
LABEL description="Dockerized version of smee-client for arm64v8"
LABEL website="https://smee.io"

# smee-client version
ENV VERSION 1.1.0

WORKDIR /smee
RUN npm install -g smee-client@$VERSION
COPY smee-client.js /smee/smee-client.js
USER nobody
ENTRYPOINT [ "npm", "start" ]
