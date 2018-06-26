FROM node:latest
MAINTAINER Gabriel Noguchi
ENV NODE_ENV=production
ENV PORT=3000
COPY . /var/www
WORKDIR /var/www

RUN npm install
ENTRYPOINT ["npm", "start"]
EXPOSE $PORT