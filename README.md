# docker-nginx-cors

Docker image for Nginx with CORS support.

## Docker image

An image with Nginx configured to support [CORS](https://www.w3.org/TR/cors/#introduction) requests.
This image is mostly intended for development use.

## Installation

Just pull the image from the Docker hub:

```shell
docker pull emarcs/docker-nginx-cors
```

## Usage

A simple docker compose file:

```yml
ngixn_cors:
  image: emarcs/docker-nginx-cors
  ports:
    - 35001:80
```
