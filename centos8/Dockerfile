FROM                centos:8 
RUN                 dnf --disablerepo '*' --enablerepo extras swap centos-linux-repos centos-stream-repos -y && dnf distro-sync -y 
RUN                 yum install epel-release -y 
RUN                 yum install vim unzip -y 
