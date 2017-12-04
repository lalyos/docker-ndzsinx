FROM ubuntu
RUN apt-get install -y curl
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD start /
EXPOSE 80
EXPOSE 443
ENTRYPOINT ["/start"]
