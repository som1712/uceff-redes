From centos
RUN yum update -y
RUN yum install -y net-tool nano httpd
ADD run-httpd.sh /opt/run-httpd.sh

RUN chmod +x /opt/run-httpd.sh

EXPOSE 80

CMD ["/opt/run-httpd.sh"]
