## FROM node:8
FROM nodeshift/centos7-s2i-nodejs:latest

WORKDIR /opt/app-root/src/

RUN sudo yum -y update
RUN sudo yum clean all

COPY . .

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
