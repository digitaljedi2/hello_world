FROM nginx

MAINTAINER Jonathan Poole <jpoole@digitaljedi.ca>

# add the files
RUN apt-get update
RUN apt-get install -y net-tools

COPY website_content /usr/share/nginx/html
RUN chmod -R 777 /var/log/nginx /var/cache/nginx/ \
          && chmod 644 /etc/nginx/*
RUN chown -R nginx:nginx /var/cache/ /etc/nginx/
RUN chmod -R 0777 /var/cache/

USER nginx

CMD ["nginx", "-g", "daemon off;"]

# Expose the ports for nginx
EXPOSE 8080
