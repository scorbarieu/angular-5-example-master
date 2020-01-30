FROM nginx:latest

## Copy our nginx config
COPY nginx/ /opt/app-root/etc/nginx.d/

## Remove default nginx website
#RUN rm -rf /usr/share/nginx/html/*

## copy over the artifacts in dist folder to default nginx public folder
COPY dist/ /opt/app-root/src

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
