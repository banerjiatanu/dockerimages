FROM docker.io/centos:latest
MAINTAINER Atanu Banerjee (atnu.bandyopadhyay@sc.com)
RUN yum install httpd -y
COPY start.sh /root/
COPY index.html /var/www/html/
RUN chown apache.apache /var/www/html/index.html
RUN chmod 444 /var/www/html/index.html
RUN chmod 555 /root/start.sh

EXPOSE 80
CMD ["/root/start.sh"]
