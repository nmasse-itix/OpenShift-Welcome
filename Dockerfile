FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:latest

ADD share/cgi-bin /opt/rh/httpd24/root/var/www/cgi-bin/
ADD share/html /opt/rh/httpd24/root/var/www/html

VOLUME /ogl/data

ENTRYPOINT [ "/usr/bin/run-httpd" ]
CMD [ ]
