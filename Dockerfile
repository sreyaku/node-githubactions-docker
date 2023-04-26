FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --package-lock-only
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
