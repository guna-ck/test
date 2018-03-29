FROM centos:7
RUN yum update -y && \
    yum install -y httpd
RUN systemctl start httpd
EXPOSE 80
