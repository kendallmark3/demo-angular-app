FROM nginx:alpine
LABEL author="Mark Kendall"
COPY dist/ .
COPY ./ /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
