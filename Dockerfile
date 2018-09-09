FROM ubuntu:latest
RUN apt-get update -y 
RUN apt-get install -y apache2 curl

EXPOSE 800

CMD ["apache2" "start"]
