FROM nginx:1.13.3-alpine
## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY ./ /app/
ARG configuration=production
RUN npm run build -- --output-path=./dist/out --configuration $configuration
## From 'builder' stage copy over the artifacts in dist folder to default nginx public folder
COPY ./ /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
