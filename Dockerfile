FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:latest

# CGI scripts go to /opt/rh/httpd24/root/var/www/cgi-bin/
ADD share/cgi-bin /opt/rh/httpd24/root/var/www/cgi-bin/

# Static files go to /opt/rh/httpd24/root/var/www/html
ADD share/html /opt/rh/httpd24/root/var/www/html

# Install missing Perl modules
RUN yum update -y \
 && yum install -y perl-CGI perl-Sys-CPU \
 && yum clean all \
 && rm -rf /var/cache/yum

