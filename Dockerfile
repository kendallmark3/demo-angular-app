FROM nginx:alpine
LABEL author="Sahil Malik"
COPY ./dist/angular-app /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
