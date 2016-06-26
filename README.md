#Uso
1. Clone este repositorio
2. Haga los cambios que desee (ver detalles más abajo)
3. Ejecute el siguiente comando `docker-composer up -d`

# Descripción
Este repositorio pretender servir como una plantilla para un entorno de desarrollo LAMP con docker-compose el cual trae preconfigurados algunos contenedores:
- Mongo
- MySQL
- Apache (con PHP)
-
Las imágenes utilizadas como servicio (mongo y mysql), no han sido modificadas.

## Mongo
En el archivo docker-compose.yml se puede personalizar el directorio en el cual se almacenaran los datos de Mongo en el sistema operativo anfirtión (host).

Configuración por defecto:

    volumes:
      - ~/docker/volumes/mongo:/data/db

Para mayor información acerca de esta imagen: [https://hub.docker.com/_/mongo/](https://hub.docker.com/_/mongo/)

## MySQL
En el archivo docker-compose.yml se puede personalizar el directorio en el cual se almacenaran los datos de Mongo en el sistema operativo anfirtión (host).

Configuración por defecto:

    volumes:
      - ~/docker/volumes/mysql:/var/lib/mysql

Para mayor información acerca de esta imagen: [https://hub.docker.com/_/mysql/](https://hub.docker.com/_/mysql/)

## Apache (con PHP)
Esta imagen es la principal donde se publica el código fuente y se personaliza a través del archivo Dockerfile, en el cual se instalan algunas extensiones bastente comunes para el funcionamiento de algunos frameworks PHP como Symfony y Laravel

En el archivo docker-compose.yml tambien se pueden cambiar otros parametros como las variables de entorno, el puerto sobre el cual funcionara Apache y el directorio que se montará como un volumen en el directorio raiz de Apache.

El repositorio incluye el archivo `credentials` donde puede ingresar sus llaves para AWS 

Configuración por defecto:

    volumes:
      - .:/var/www/html
    ports:
      - 80:80
    environment:
       DEBUG: true

Para mayor información acerca de esta imagen: [https://hub.docker.com/_/php/](https://hub.docker.com/_/php/)
