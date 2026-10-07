FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY website/ /var/www/html/
EXPOSE 80
CMD ["apache2", "-D", "FOREGROUND"]

