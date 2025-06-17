FROM python:3.11-slim

# Variables de entorno
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


RUN apt-get update && apt-get install -y git

#Solicitud vía https al repositorio el código del proyecto 
RUN git clone https://github.com/MichelleChG12/practica_docker.git app


WORKDIR app

# Ejecutar el proyecto
CMD ["python", "app_presentacion.py"] 
