FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
COPY package-lock.json* ./
RUN npm install --network-timeout=100000
COPY . .
CMD ["npm", "start"]
