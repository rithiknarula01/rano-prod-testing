FROM redhat/ubi9
RUN yum install httpd -y && yum install wget zip -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/energym.zip /var/www/html
RUN unzip energym.zip -d /var/www/html
RUN mv energym-html/* /var/www/html
CMD ["httpd", "-DFOREGROUND"]
