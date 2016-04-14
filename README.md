# docker-nginx-cors

Docker image for Nginx with CORS support.

[![](https://badge.imagelayers.io/emarcs/nginx-cors:latest.svg)](https://imagelayers.io/?images=emarcs/nginx-cors:latest 'Get your own badge on imagelayers.io')

## Docker image

An image based on Debian Jessie with Nginx configured to
support [CORS](https://www.w3.org/TR/cors/#introduction) requests.

This image is mostly intended for development use.

## Installation

Just pull the image from the Docker hub:

```shell
docker pull emarcs/nginx-cors
```

## Usage

A simple docker compose file:

```yml
ngixn_cors:
  image: emarcs/nginx-cors
  ports:
    - 35001:80
  volumes:
    - ./default:/etc/nginx/sites-available/default
```

### Nodejs example

Another example proxyfing nodejs:

```yml
version: '2'

services:
  srv:
    image: emarcs/nginx-cors
    ports:
      - 35001:80
    volumes:
      - ./default-node:/etc/nginx/sites-available/default
    links:
      - node:node_app
  node:
    image: node:4-onbuild
    volumes:
      - ./example:/usr/src/app
```
