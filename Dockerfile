FROM centos:8

RUN yum -y install httpd; yum clean all; systemctl enable httpd.service

EXPOSE 80

CMD ["/usr/sbin/init"]


COPY ./Sample.html /var/www/html/

