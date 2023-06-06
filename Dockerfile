FROM node:16-alpine

RUN mkdir -p /home/app/public
WORKDIR /home/app

COPY package.json .
RUN yarn

COPY . .

CMD [ "yarn", "start" ]
