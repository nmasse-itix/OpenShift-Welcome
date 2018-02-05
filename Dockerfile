FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:latest

# YUM requires root 
USER 0

# Install missing Perl modules
RUN yum update -y \
 && yum install -y perl-CGI perl-Sys-CPU \
 && yum clean all \
 && rm -rf /var/cache/yum

# Back to unprivileged user
USER 1001

# CGI scripts go to /opt/rh/httpd24/root/var/www/cgi-bin/
ADD share/cgi-bin ${HTTPD_DATA_ORIG_PATH}/cgi-bin/

# Static files go to /opt/rh/httpd24/root/var/www/html
ADD share/html ${HTTPD_DATA_ORIG_PATH}/html

