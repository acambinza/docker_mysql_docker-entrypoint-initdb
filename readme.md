# docker & mysql & docker-entrypoint-initdb

## Um exemplo básico, porém importante para quem desenvolve com docker

- a necessidade surgiu de rodar um script, no caso .SQL sempre que se faser o build de um container, 
como por exemplo: criar um banco de dados e rodar alguns seeds.


# Requisitos 
- docker CE
- docker-compose 
- git 


# INSTALL 
- clone : https://github.com/acambinza/docker_mysql_docker-entrypoint-initdb.git
- docker-compose build --no-cache
- docker-compose up -d



### No dockerfile 
- no Dockerfile, tem o seguinte CMD

COPY ./dockercompose/db/sql/*.sql /docker-entrypoint-initdb.d/

- copiamos os nosso script do "./dockercompose/db/sql/*.sql" para "/docker-entrypoint-initdb.d/"
- ao fazer o build do projecto ele vai rodar o script que está no entrypoint-initdb


## COLA AÌ UM STAR NO PROJECTO
