FROM centos:7
RUN yum update -y && \
    yum install -y httpd
RUN echo "Welcome to html" > /var/www/html
EXPOSE 80
