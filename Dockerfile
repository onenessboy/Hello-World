FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apache2 && apt-get clean
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
FROM httpd:2.4
COPY ./index.html /usr/local/apache2/htdocs/ 
EXPOSE 8080
