FROM nephatrine/nginx-php:latest
LABEL maintainer="Daniel Wolf <nephatrine@gmail.com>"

RUN echo "====== SYSTEM CONFIGURATION ======" \
 && sed -i 's/index.php/doku.php index.php/g' /etc/nginx/nginx.conf

COPY override /