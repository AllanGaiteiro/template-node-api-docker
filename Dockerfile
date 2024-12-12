# Usar a imagem base do Node.js
FROM node:18-alpine

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o package.json e instalar dependências
COPY package.json ./
RUN npm install

# Copiar o código da aplicação para o contêiner
COPY ./src ./src

# Expor a porta onde o servidor será executado
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
