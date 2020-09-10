FROM centos 
RUN sed -e 's/enabled=0/enabled=1/g' /etc/yum.repos.d/CentOS-PowerTools.repo > /etc/yum.repos.d/MOD_CentOS-PowerTools.repo 
RUN mv -f /etc/yum.repos.d/MOD_CentOS-PowerTools.repo /etc/yum.repos.d/CentOS-PowerTools.repo 
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash 
RUN yum install -y tcpdump nc bind-utils net-tools lynx openssh openssh-clients MariaDB-client 
RUN mv /etc/localtime /etc/localtime.orig 
RUN ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime 
CMD ["/bin/bash"]
