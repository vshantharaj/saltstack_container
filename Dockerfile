FROM centos/systemd
MAINTAINER vikram <vikram.bs@gmail.com>

# setup saltstack
RUN yum -y install https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm 
RUN yum -y clean expire-cache 
RUN yum -y install salt-master 

# volume
VOLUME ['/etc/salt/pki', '/var/cache/salt', '/var/logs/salt', '/etc/salt/master.d', '/srv/salt']


EXPOSE 4505 4506