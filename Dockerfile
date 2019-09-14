## comment 3

FROM nodeshift/centos7-s2i-nodejs:10.x

WORKDIR /opt/app-root/src/

COPY . .

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
