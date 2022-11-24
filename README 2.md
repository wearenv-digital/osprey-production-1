# Osprey Security-docker

To build the app

dev:

1. docker-compose up -d -f docker-compose.yml -f docker-compose.dev.yml

prod:

1. change dockerfile to ensure run command =
   `RUN npm install --only=production`
2. docker-compose up -d -f docker-compose.yml -f docker-compose.prod.yml

to rebuild image
`docker-compose build`
when it comes to ssl and https

With Traefik, on local,

GUI-
http://monitor.docker

SQL host
test.sql.docker
