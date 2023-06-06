FROM node:16-alpine
WORKDIR /home/app

COPY package.json .
RUN yarn

COPY . .
CMD [ "yarn", "start" ]
