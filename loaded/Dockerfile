FROM            dokken/centos-8

## Install Base packages 
RUN             yum install epel-release -y 
RUN             dnf install vim gcc unzip bind-utils git make -y 

## Install AWS CLI 
RUN             curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install && rm -rf awscliv2.zip aws 

## Install Tools 
### Terraform Tools 
RUN             curl -L -o /etc/yum.repos.d/hashicorp.repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && dnf install terraform -y 
ADD             terrafile /bin
RUN             chmod +x /bin/terrafile 

### Kubectl 

## Install Programming Languages 


## Files that to copy 
ADD             .bashrc /root/.bashrc 
ADD             gclone /bin/gclone 
RUN             chmod +x /bin/gclone 
