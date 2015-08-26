FROM ubuntu
RUN apt-get install -y curl
RUN apt-get install -y nginx
RUN echo "<h1>victor getszi</h1>" > /usr/share/nginx/html/index.html

ADD nginx.conf /etc/nginx/nginx.conf
ADD start /
EXPOSE 80
EXPOSE 443
ENTRYPOINT ["/start"]
