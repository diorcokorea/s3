FROM node:12-alpine

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
RUN npm prune --production
CMD npm start
