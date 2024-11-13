# Usando a imagem oficial do Node 16
FROM node:16

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando os arquivos de dependências (package.json e package-lock.json, caso exista)
COPY package*.json .

# Instalando as dependências dentro do diretório de trabalho
RUN npm install

# Copiando o restante do código (incluindo o diretório views e src)
COPY . .

# Expondo a porta do frontend
EXPOSE 83

# Comando para iniciar o servidor (no caso do arquivo estar em /app/src/server.js)
CMD ["npm", "start"]
