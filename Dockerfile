# Imagen base ligera de Python
FROM python:3.12-slim

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar primero requirements para aprovechar la cache de Docker
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del proyecto
COPY . .

# Puerto que expone el contenedor
EXPOSE 5001

# Comando que arranca la app
CMD ["python", "app.py"]
