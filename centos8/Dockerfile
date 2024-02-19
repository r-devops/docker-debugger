FROM                dokken/centos-stream-8 
RUN                 dnf --disablerepo '*' --enablerepo extras swap centos-linux-repos centos-stream-repos -y && dnf distro-sync -y 
RUN                 yum install epel-release java -y 
RUN                 yum install vim unzip -y 
ENV 		        PS1="[ \[\e[1;31m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \[\e[1;36m\]\w\[\e[m\] ]\\$ "
WORKDIR             /root 

