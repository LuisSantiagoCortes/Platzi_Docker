FROM node:12

# Copia todos los archivos del directorio "." a la ruta "/usr/src/"
COPY [".", "/usr/src/"]

# Define el directorio de trabajo
WORKDIR /usr/src

# Instala las dependencias 
RUN npm install

# Se expone a la maquina local con el puerto 3000
EXPOSE 3000

# Comando por defecto que va a ejecutar
CMD ["node", "index.js"]
