FROM ubuntu
RUN apt-get update && apt-get install apache2 -y
RUN apt-get install unzip -y
WORKDIR /var/www/html 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip /var/www/html
RUN unzip handtime.zip -d /var/www/html
RUN  mv /var/www/html/handtime-html/* /var/www/html/
CMD ["apache2ctl", "-DFOREGROUND"]
