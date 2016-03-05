FROM node:4.2.2

RUN mkdir /app

RUN npm install -g supervisor

CMD ["npm start"]
