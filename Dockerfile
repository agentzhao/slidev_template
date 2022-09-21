FROM node:18-alpine3.15

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . ./

RUN chown -R node /app/node_modules

USER node
# start app
CMD ["npx", "slidev", "--remote"]
