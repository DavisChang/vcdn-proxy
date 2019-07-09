FROM nginx:1.14.0-alpine
LABEL maintainer="Davis Chang <DavisChang1030@gmail.com>"

RUN apk add --no-cache --upgrade nginx-mod-http-perl

ADD nginx.conf.tmpl /etc/nginx/nginx.conf

CMD ["nginx","-g","daemon off;"]
