FROM ubuntu 
RUN  apt-get update -y
RUN  apt-get install apache2 -y
RUN cd /var/www/html/ 
ADD index.html /var/www/html/
ENTRYPOINT apache2ctl -D FOREGROUND
