FROM node:lts

WORKDIR /app

COPY . .

RUN npm install

ENV MONGO_URI="mongodb://mongodb:27017"

EXPOSE 8000

CMD ["npm", "start"]