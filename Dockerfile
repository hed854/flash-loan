FROM node:latest


RUN npm install -g truffle

WORKDIR /src
COPY src/package.json .
# install aave contracts
RUN npm install

USER node

