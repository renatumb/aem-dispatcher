FROM httpd:2.4
RUN apt update && apt upgrade && apt install curl
COPY ./home/dispatcher-apache2.4-4.3.3.so /usr/local/apache2/modules/dispatcher-apache2.4-4.3.3.so
COPY ./home/dispatcher.any /usr/local/apache2/conf/dispatcher.any 
COPY ./home/httpd-dispatcher.conf /usr/local/apache2/conf/extra/httpd-dispatcher.conf
COPY ./home/httpd.conf /usr/local/apache2/conf/httpd.conf
