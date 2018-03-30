FROM ubuntu:14.04
RUN apt-get update -y && \
    apt-get install -y apache2 \
    curl

EXPOSE 80
CMD ["apache2", "start"]
