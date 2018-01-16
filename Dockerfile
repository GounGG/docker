FROM centos:6.9

RUN yum -y install epel-release

RUN yum -y install openssh-server

RUN mkdir -p /var/run/sshd

RUN mkdir -p /root/.ssh

RUN /etc/init.d/sshd start

RUN /etc/init.d/sshd stop

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]