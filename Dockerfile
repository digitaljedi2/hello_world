FROM nginx

MAINTAINER Jonathan Poole <jonathan.poole@ncr.com>

#RUN apk update && \
#    apk upgrade && \
#    apk add --update nginx && rm -rf /var/cache/apk/*

# add the files
#COPY nginx/nginx.conf /etc/nginx/nginx.conf
#COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY website_content /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]

# Expose the ports for nginx
EXPOSE 80 443
