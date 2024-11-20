# Indicar que imagen queremos utilzar
FROM node:23-slim

# Indicar el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY package*.json ./

# Instalar las dependencias
RUN npm install \
    && npm cache clean --force \
    && rm -rf /tmp/* /root/.npm/_cacache


# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto 5000 internamente
EXPOSE 5000

# Comando para iniciar la aplicación
CMD ["npm" , "start"]

