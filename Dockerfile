# Usar Ubuntu como base
FROM ubuntu:22.04

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar la carpeta 'src' al contenedor
COPY src/ /app/

# Instalar Python y su servidor HTTP
RUN apt-get update && apt-get install -y python3

# Exponer el puerto 8000
EXPOSE 8000

# Comando para ejecutar el servidor HTTP
CMD ["python3", "-m", "http.server", "8000"]
