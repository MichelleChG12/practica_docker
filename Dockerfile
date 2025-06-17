# Imagen base
FROM python:3.11-slim

# Variables de entorno
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Instalar git
RUN apt-get update && apt-get install -y git

# Clonar el proyecto desde GitHub
RUN git clone https://github.com/MichelleChG12/practica_docker.git app

# Establecer carpeta de trabajo
WORKDIR app

# Ejecutar el script
CMD ["python", "app_presentacion.py"] 
