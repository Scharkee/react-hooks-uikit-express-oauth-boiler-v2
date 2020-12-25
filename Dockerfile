FROM node:15
WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN yarn

COPY . .

EXPOSE 8080

RUN yarn build

CMD ["yarn", "start"]
