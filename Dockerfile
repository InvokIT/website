FROM nginx:1.9
MAINTAINER Sebastian Joergensen <sj@invokit.dk>

#RUN mkdir -p /var/www
#COPY www /var/www
#RUN chown -R nginx:nginx /var/www

COPY nginx.conf /etc/nginx/nginx.conf