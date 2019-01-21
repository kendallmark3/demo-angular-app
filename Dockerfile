FROM nginx:alpine as node
LABEL author="Mark Kendall"
WORKDIR angular-app
COPY . /angular-app
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
