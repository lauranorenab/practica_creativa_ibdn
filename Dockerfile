# Define la imagen base
FROM hseeberger/scala-sbt:8u222_1.3.5_2.13.1

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos fuente al contenedor
COPY . .

# Compila la aplicación
RUN sbt compile

# Comando para ejecutar la aplicación
CMD ["sbt", "run"]
