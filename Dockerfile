FROM node:4.2.2

RUN mkdir /app
WORKDIR /app
ADD package.json ./
RUN npm install
RUN npm install -g strongloop
ADD . ./

CMD ["start"]
ENTRYPOINT [ "npm" ]
