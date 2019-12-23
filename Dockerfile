FROM node:12.14.0-alpine

WORKDIR /home/node
COPY package*.json ./

RUN apk add --no-cache \
  git \
  openssh \
  bash \
  &&npm install

COPY . .

CMD ["npm", "run", "dev"]
