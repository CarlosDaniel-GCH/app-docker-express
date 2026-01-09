# Instalar dependencias

```bash
npm install express mysql2
```

# Requisitos:

- Tener el Docker Desktop corriendo, importante para poder levantar los contenedores 

# Crear una imagen y lanzar el sistema completo de contenedores y los conecta

```bash
docker-compose up --build
```

# Lanzar contenedores usando la ultima imagen que fue construida

```bash
docker-compose up
```

# Detener y eliminar contenedores(si lo deseas)

```bash
docker-compose down -v
```

# Como funciona docker

docker-compose.yml es el archivo que levanta todo y el Dockerfile es quien le da las instrucciones de como construir la imagen