FROM node:18

WORKDIR /app

COPY . /app/

COPY package*.json /app/

RUN nvm install --lts

RUN npm install

RUN npm run build

EXPOSE 8080

CMD ["npm", "start"]
