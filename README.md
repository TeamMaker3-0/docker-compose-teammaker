## Iniciar sesion
docker login

## Trae imagenes
docker compose pull

## Ejecutar contenedores
docker compose up -d

## Stop services only
docker compose stop

## Stop and remove containers, networks..
docker compose down 

## Down and remove volumes
docker compose down --volumes 

## Down and remove images
docker compose down --rmi <all|local>
