FROM nginx:1.24.0
LABEL org.opencontainers.image.source=https://github.com/campbelljlowman/fazool-reverse-proxy

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./audio/* /var/audio/

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]