FROM node:21-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

# Actualiza npm a la última versión
RUN npm install -g npm@latest
RUN npm install

COPY . .

RUN npx prisma generate

EXPOSE 3001
