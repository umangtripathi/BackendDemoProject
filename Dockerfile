FROM node:8

ENV NODE_ENV=''
#ENV IP=''
ENV APP='BackendDemoProject'
WORKDIR /site/${APP}

COPY package.json .

COPY config/default.json config/default.json 
COPY db_connections/ db_connections
COPY index.js .
COPY logger/ logger
COPY node_server.js .
COPY src/ src
COPY test/ test
RUN npm install
EXPOSE 51005
CMD npm start
