FROM   rkalluru/debug:v11
COPY hashicorp.repo /etc/yum.repos.d/hashicorp.repo
RUN    dnf install net-snmp net-snmp-utils terraform packer genisoimage -y
RUN    rm -f /usr/sbin/packer && packer plugins install github.com/hashicorp/vsphere
