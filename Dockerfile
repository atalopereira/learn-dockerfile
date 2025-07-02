FROM node:20

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

# Copia tudo do que está no diretório atual para o diretório de trabalho do container
# Isso é necessário porque precisamos dos arquivos da nossa aplicação 
COPY . .

RUN npm run build

EXPOSE 5173

CMD ["npm", "run", "dev"]