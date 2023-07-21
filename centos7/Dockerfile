FROM        centos:7

RUN         yum install epel-release -y
RUN         yum install git gcc unzip vim jq make automake -y
WORKDIR     /tmp
RUN         git clone https://github.com/neurobin/shc.git
WORKDIR     /tmp/shc
RUN         ln -s /usr/bin/aclocal-1.13 /usr/bin/aclocal-1.16
RUN         ln -s /usr/bin/automake-1.13 /usr/bin/automake-1.16
RUN         ln -s /usr/share/aclocal/pkg.m4 /usr/share/aclocal/aclocal.m4
RUN         ./configure && make && make install

# POSTGRES
#RUN         yum install postgresql-server.x86_64 -y
RUN          yum install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm -y
RUN          yum install postgresql13 -y
# CLEANUP
RUN         rm -rf /tmp/*
WORKDIR     /root

ENTRYPOINT      ["tail", "-f", "/dev/null"]