## FROM node:8
FROM node:latest

WORKDIR /opt/app-root/src/

COPY . .

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
