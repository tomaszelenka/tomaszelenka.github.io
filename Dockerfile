FROM nginx:stable-alpine

LABEL maintainer="Tomas Zelenka" \
    description="Personal website (tomaszelenka.cz) served with Nginx"

COPY index.html style.css /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets/

EXPOSE 80 443

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s \
    CMD wget --quiet --tries=1 --spider http://localhost || exit 1