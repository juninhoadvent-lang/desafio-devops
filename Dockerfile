# Imagem base [cite: 15]
FROM node:18-alpine

# Pasta de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do seu PC para o container [cite: 17]
COPY . .

# Instala as dependências [cite: 16]
RUN npm install

# Porta que a aplicação vai usar [cite: 18]
EXPOSE 8080

# Comando para ligar a aplicação [cite: 19]
CMD ["npm", "start"]
