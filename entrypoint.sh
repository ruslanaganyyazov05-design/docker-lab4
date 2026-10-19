#!/bin/bash
mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld
mysqld_safe --user=mysql &
until mysqladmin ping --silent; do sleep 1; done
exec nginx -g 'daemon off;'
