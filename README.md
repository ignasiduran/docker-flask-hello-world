# Sample Flask application with Docker

Flask webapp with Docker.

## Build container image

```
docker build -t flask-hello-world .
```

## Start container

```
docker run -p 8080:8080 flask-hello-world
```

## Test

```
http://127.0.0.1/8080
```