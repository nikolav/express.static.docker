FROM node:16-alpine

RUN mkdir -p /home/app/public; mkdir -p /home/app/public/_app
WORKDIR /home/app

COPY package.json .
RUN yarn

COPY . .

CMD [ "yarn", "start" ]
