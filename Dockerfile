FROM centos:7

ENV container docker

COPY bootstrap.sh /var/opt/

RUN yum -y update
RUN yum -y install systemd openssh-client openssh-server vim net-tools 

CMD ["/usr/sbin/init"]