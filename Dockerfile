FROM debian:9
MAINTAINER paumiau
RUN apt-get update && \
    apt-get -y install vim nginx
RUN rm /etc/nginx/sites-enabled/default
ADD ficheros/curso.conf /etc/nginx/conf.d/curso.conf
ADD ficheros/index.html /var/www/index.html
VOLUME ["/var/www"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
