# docker-vue-app

## Dev

### Docker
Build Docker image
```
docker build -t my-app:dev .
```

Run Docker Container
```
docker run -v ${PWD}:/app -v /app/node_modules -p 8081:8080 -rm my-app:dev
```

### Docker Compose
Build And Run 
```
docker-compose up -d --build
```

Stop
```
docker-compose stop
```

## Production

Build Docker image
```
docker build -f Dockerfile-prod -t my-app:prod .
```

Run Docker Container
```
docker run -it -p 80:80 --rm my-app:prod
```

### Docker Compose
Build And Run 
```
docker-compose -f docker-compose-prod.yaml up -d --build
```

Stop
```
docker-compose -f docker-compose-prod.yaml stop
```