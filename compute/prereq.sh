#===============
#== add libs ===
#===============

RUN yum -y update && yum -y upgrade && yum -y install yum-utils vim zip unzip ntp bind bind-utils git httpd-tools sudo

#=================
#== add Apache ===
#=================

# APACHE installation
RUN yum -y install httpd; yum clean all; systemctl enable httpd.service

#==============
#== add PHP ===
#==============

RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum-config-manager --enable remi-php72

RUN yum -y install php php-pdo php-bcmath php-fpm php-mysqlnd php-json php-cli php-opcache php-common php-gd php-devel php-intl php-ldap php-mbstring php-pear php-soap php-xml php-xmlrpc php-zip
