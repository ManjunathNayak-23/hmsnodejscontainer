FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
EXPOSE 80
COPY . .
ENTRYPOINT npm start --host=0.0.0.0
