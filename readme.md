# Instalar dependencias
npm install express mysql2

# Detener y eliminar contenedores
docker-compose down -v

# Crear una imagen y lanzar el sistema completo de contenedores y los conecta
docker-compose up --build

# Lanzar contenedores usando la ultima imagen que fue construida
docker-compose up

#Como funciona docker
docker-compose.yml es el archivo que levanta todo y el Dockerfile es solo quien le dice como hacerlo