FROM centos:7
RUN yum update -y 
RUN yum install -y httpd \
        curl

RUN curl http://localhost:80

EXPOSE 80

CMD ["httpd" "start"]
