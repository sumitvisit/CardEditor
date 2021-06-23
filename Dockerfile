FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build

# Bundle app source

ENV PORT 8081
EXPOSE 8081

CMD ["npm", "run", "start:prod"]