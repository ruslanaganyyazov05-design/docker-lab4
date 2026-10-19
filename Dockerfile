FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends nginx mariadb-server && rm -rf /var/lib/apt/lists/*
COPY index.html /var/www/html/index.html
COPY entrypoint.sh /entrypoint.sh
RUN sed -i 's/\r$//' /entrypoint.sh && chmod +x /entrypoint.sh
EXPOSE 80 3306
CMD ["/entrypoint.sh"]
