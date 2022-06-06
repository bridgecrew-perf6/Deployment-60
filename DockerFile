FROM centos:latest
MAINTAINER shivsaxena7963@gmail.com
RUN yum install -y httpd \
	zip \
  unzip
ADD
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
