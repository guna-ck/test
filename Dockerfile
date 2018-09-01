FROM ubuntu:latest
RUN apt-get update -y 
RUN apt-get install -y apache2 curl

EXPOSE 80

CMD ["apache2" "start"]
