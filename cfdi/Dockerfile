FROM            docker.io/redhat/ubi9
RUN             yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y

## Install General Tools 
RUN             dnf install vim gcc unzip bind-utils git make netcat -y

## Install AWS CLI
RUN             curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install && rm -rf awscliv2.zip aws

## Ansible 
RUN             yum install python3.11-devel python3.11-pip sshpass -y
RUN             pip3.11 install ansible botocore boto3 python-jenkins

## DB Tools 
COPY            mongodb.repo /etc/yum.repos.d/mongodb.repo 
RUN             yum install mongodb-mongosh -y 
RUN             dnf install https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm -y 
#RUN             dnf -qy module disable postgresql
RUN             dnf install postgresql13 -y 

## Kafka 
RUN             curl -L https://downloads.apache.org/kafka/3.5.0/kafka_2.12-3.5.0.tgz -o /opt/kafka_2.12-3.5.0.tgz 
RUN             cd /opt && tar -xf kafka_2.12-3.5.0.tgz && mv kafka_2.12-3.5.0 kafka 

### Hashicorp Tools
RUN             curl -L -o /etc/yum.repos.d/hashicorp.repo https://rpm.r#eases.hashicorp.com/RHEL/hashicorp.repo && dnf install terraform vault packer -y
ADD             terrafile /bin
RUN             chmod +x /bin/terrafile

### Kubernetes Tools 
ADD             kubectl /bin 
ADD             k9s /bin 
ADD             helm /bin 
ADD             kubens /bin 
ADD             kubectx /bin 
ADD             aws-auth /bin 
RUN             chmod +x /bin/kubectl /bin/k9s /bin/helm /bin/kubens /bin/kubectx /bin/aws-auth

COPY            profile.sh /etc/profile.d/profile.sh 
RUN             chmod +x /etc/profile.d/profile.sh 
WORKDIR         /root 
ENTRYPOINT      ["tail" , "-f", "/dev/null"]

RUN             yum install java-17-openjdk-devel jq -y 
RUN             mkdir -p ~/.ssh
COPY            ssh-config ~/.ssh/config
RUN             chmod 600 ~/.ssh/config
