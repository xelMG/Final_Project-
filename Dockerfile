FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
USER node
CMD ["npm", "start"]


# Exponemos el puerto que usa la aplicación (ajusta según sea necesario)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "src/index.js"]
