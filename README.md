# docker-lab4

Образ: Ubuntu 24.04 + nginx + MariaDB.

Сборка:   docker build -t lab4-web-db:1.0 .
Запуск:   docker run -d --name lab4 -p 8080:80 lab4-web-db:1.0
Проверка: curl http://localhost:8080

Базовый образ: ubuntu:24.04 (Docker Hub, official image).
