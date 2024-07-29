FROM nginx
RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /var/www/html/
EXPOSE 8082

