FROM                dokken/centos-stream-9 
RUN                 yum install epel-release java -y 
RUN                 yum install vim unzip -y 
ENV 		    PS1="\n[ \[\e[1;31m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \[\e[1;36m\]\w\[\e[m\] ]\\$ "
WORKDIR             /root 
ADD		    .bashrc /root/.bashrc
