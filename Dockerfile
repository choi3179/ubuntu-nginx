FROM ubuntu:22.04

RUN apt update

RUN apt install -y nginx

CMD ["/usr/sbin/nginx", "-v"]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
