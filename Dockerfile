## comment 2

FROM node:8

WORKDIR /opt/app-root/src/

COPY . .
## COPY package*.json ./

RUN npm install

## COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
