# Usa una imagen oficial de Node.js
FROM node:20-alpine

# Define el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de configuración de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código (server.js, index.html, styles.css, etc.)
COPY . .

# Expone el puerto que usa tu servidor
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "server.js"]