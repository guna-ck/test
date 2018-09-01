FROM ubuntu:l6.04
RUN apt-get update -y 
RUN apt-get install -y httpd \
        curl
EXPOSE 80

CMD ["httpd" "start"]
