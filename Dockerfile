# Base image
FROM node:lts

# Working Directory
WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY . .

EXPOSE 8000

ENV MONGO_URI="mongodb://mongo:27017"

CMD ["npm", "run", "dev"]