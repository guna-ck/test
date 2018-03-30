FROM centos:7
RUN yum update -y && yum cleanall \
    yum install -y httpd \
        curl

RUN curl http://localhost:80

EXPOSE 80

CMD ["httpd" "start"]
