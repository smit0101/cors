FROM node:20.8.0

RUN apt install git -y

RUN git clone https://github.com/Rob--W/cors-anywhere.git

WORKDIR /cors-anywhere

RUN npm install

EXPOSE 8080

CMD ["node", "server.js"]

