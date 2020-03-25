# Tips to docker nodejs webapp
# * https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
# * https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md

# application source: 
# * https://github.com/tsmith512/scrummy
# * https://github.com/fourkitchens/scrummy-server

# a node LTS version base image
FROM node:6-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "scrum_cards_server.js" ]