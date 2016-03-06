FROM node:4.3.2

RUN mkdir /app

RUN npm install supervisor -g

CMD ["npm start"]
