FROM node:4.2.2

RUN mkdir /app
WORKDIR /app

#RUN npm update npm -g
#ADD package.json ./
#RUN npm install
#RUN npm install -g strongloop
RUN npm install -g supervisor
ADD . ./

CMD ["npm start"]
