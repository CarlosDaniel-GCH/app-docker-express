# Instalar dependencias
npm install express mysql2

# Importante:
-Tener el Docker Desktop abierto

# Crear una imagen y lanzar el sistema completo de contenedores y los conecta
docker-compose up --build

# Lanzar contenedores usando la ultima imagen que fue construida
docker-compose up

# Detener y eliminar contenedores(si lo deseas)
docker-compose down -v

# Como funciona docker
docker-compose.yml es el archivo que levanta todo y el Dockerfile es quien le da las instrucciones de como construir la imagen