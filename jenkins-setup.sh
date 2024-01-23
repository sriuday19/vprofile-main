#installing jenkins
#!/bin/bash
yum upgrade -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key
yum upgrade -y
amazon-linux-extras install epel -y
yum install fontconfig java-17-openjdk -y
yum install jenkins -y
systemctl start jenkins
systemctl enable jenkins