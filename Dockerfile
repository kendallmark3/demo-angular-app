FROM nginx:alpine as node
LABEL author="Sahil Malik"
COPY --from=node /app/dist/ /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
