@echo off
docker build -t iimjilll/my-express-app .
docker push iimjilll/my-express-app
docker-compose up -d