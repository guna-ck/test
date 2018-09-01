FROM centos:7
RUN yum update -y %% yum clean all
RUN yum install -y httpd \
        curl
EXPOSE 80

CMD ["httpd" "start"]
