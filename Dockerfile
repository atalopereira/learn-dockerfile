# Multistage build
# 1 - Build stage
# O AS é um alias (apelido), ele indica que esta linha é uma etapa de construção (build)
FROM node:20-alpine AS build

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Copia tudo do que está no diretório atual para o diretório de trabalho do container
# Isso é necessário porque precisamos dos arquivos da nossa aplicação 
COPY . .

RUN npm run build

# 2 - Production stage
FROM node:20-alpine

WORKDIR /usr/src/app

# Copiando do estágio de construção para o estágio de produção
COPY --from=build /usr/src/app/dist ./dist
COPY --from=build /usr/src/app/package.json ./package.json
COPY --from=build /usr/src/app/node_modules ./node_modules

EXPOSE 4173

CMD ["npm", "run", "preview"]