FROM centos:7

# Install systemd -- See https://hub.docker.com/_/centos/
RUN yum -y swap -- remove fakesystemd -- install systemd systemd-libs
RUN yum -y update; \

RUN yum -y install epel-release
RUN yum -y install git ansible python python-pip docker
RUN pip install docker-py
RUN ansible --version

RUN echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup"]

CMD ["/usr/sbin/init"]
