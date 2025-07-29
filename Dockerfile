FROM nginx:stable-alpine
COPY index.html style.css /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets/