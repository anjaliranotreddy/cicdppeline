FROM ubuntu 
RUN sudo apt-get update -y
RUN sudo apt-get install apache2 -y
ADD . /var/www/html
ENTRYPOINT apache2ctl -D FOREGROUND
