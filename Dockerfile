FROM nginx:alpine
LABEL author="Sahil Malik"
COPY . /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
