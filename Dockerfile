FROM ubuntu:14.04
RUN apt-get update -y && \
    apt-get install -y apache2 \
    apt-get install -y curl
RUN service apache2 start 
EXPOSE 80
