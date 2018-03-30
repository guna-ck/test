FROM ubuntu:14.04
RUN apt-get update -y && \
    apt-get install -y apache2 \
    curl
RUN service apache2 start 
EXPOSE 80
