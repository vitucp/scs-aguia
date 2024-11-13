# Usando a imagem oficial do Node 18
FROM node:18 AS build

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando os arquivos de dependências
COPY package*.json ./

# Instalando as dependências
RUN npm install

# Copiando o restante do código
COPY . .

# Expondo a porta do backend
EXPOSE 3131

# Comando para iniciar o servidor
CMD ["npm", "start"]
