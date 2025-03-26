FROM node:20-alpine

WORKDIR /app

# Copiar arquivos de configuração
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o resto do código
COPY . .

# Expor a porta
EXPOSE 5173

# Comando para iniciar a aplicação
CMD ["npm", "run", "dev", "--", "--host"] 