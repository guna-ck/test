FROM centos:7
RUN yum update -y 
RUN yum install -y httpd \
        curl
EXPOSE 80

CMD ["httpd" "start"]
