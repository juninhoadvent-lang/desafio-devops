FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
COPY package-lock.json* ./
RUN npm install --loglevel=error
COPY . .
CMD ["npm", "start"]
