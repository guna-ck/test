FROM ubuntu:14.04
RUN apt-get update -y && \
    apt-get install -y httpd
RUN service httpd start 
EXPOSE 80
