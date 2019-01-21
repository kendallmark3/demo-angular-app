FROM nginx:alpine as node
LABEL author="Mark Kendall"
COPY --from=node /app/dist/angular-app /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
