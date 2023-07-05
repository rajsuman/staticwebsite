FROM centos
RUN yum update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install tzdata -y
RUN yum install apache2 -y
COPY  index.html   /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
