# Jenkins Docker outside of Docker (Master only)

## TL;DR

- Build a Jenkins container as `master cluster`
```
ubuntu@hostname ~/jenkins-DooD-webhook (master) $ git clone git@github.com:gkzz/jenkins-DooD-webhook.git
ubuntu@hostname ~/jenkins-DooD-webhook (master) $ docker-compose up -d --build
ubuntu@hostname ~/jenkins-DooD-webhook (master) $ docker-compose exec master bash
root@master:/# cat /var/jenkins_home/secrets/initialAdminPassword
xxxxxxxxxxxxxxxxxxxxxxxx
```



## Technologies Used
- Docker 19.03.4
  - Jenkins Image (Master) jenkins/jenkins:lts
    - Jenkins ver. 2.190.1 (From Web Potal)
- docker-compose 1.24.1
- AWS (EC2, VPC, EIP, etc)
  - Ubuntu 18.04.3 LTS

