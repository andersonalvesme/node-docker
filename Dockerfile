FROM node:16-alpine

RUN apk add openssl && \
    rm -rf /var/cache/apk/*

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
