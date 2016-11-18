FROM nginx

MAINTAINER Jonathan Poole <jpoole@digitaljedi.ca>

# add the files
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY website_content /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]

# Expose the ports for nginx
EXPOSE 8080
