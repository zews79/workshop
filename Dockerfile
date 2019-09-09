## FROM node:8
FROM registry.centos.org/centos/nodejs-8-centos7:latest

WORKDIR /opt/app-root/src/

COPY . .

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
