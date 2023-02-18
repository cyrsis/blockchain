FROM node:8.11.3-stretch@sha256:573d35e8d90c393c78cda841c6d308789908c2209a3fe1dd2c38f05231fc489a

COPY . /app
WORKDIR /app

ENV NODE_ENV development

RUN apt-get update && apt-get install -y git-core
RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
