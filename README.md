# Deployement Project
Having an application provisioned, this project focuses on the deployement of said application. The application itself is a simple flask application. A web page, backend code written in python & a mysql database. To deploy the application, it was my task to utilise the technologies I have recently learned. Namely: Docker, Docker-Compose, Nginx, Ansible, AWS EC2, AWS RDS, Jenkinns, Kubernetes & Terraform.   

---
## Contents
- [Design](#design)
- [Risk Assessment](#risk-assessment)
- [Creation](#creation)
  - [Planning](#planning)
  - [Version Control](#version-control)
  - [Docker-Compose](#docker-compose)
  - [Jenkins](#jenkins)
  - [Kubernetes](#kubernetes)
  - [Terraform](#terraform)
- [Additional Information & Resources](#additional-information--resources)

 ----

## Design

The MVP of this project is to deploy the application in a way such that it acheives these three criteria;
1. **It is deployed on a virtual machine for testing**
2. **It is deployed in a managed kubernetes cluster for production**
3. **It makes use of a managed database solution**

## Risk Assessment
While in reality the risks associated with this project are relatively low, a risk assessment is still neccessary. Below is a collection of the risks I have identified and their corresponding likelihood & impact.

<p align="center">
  <img width="1400" height="500" src="https://i.imgur.com/cRjVUY7.png">
</p>

## Creation

### Planning
This project in its very nature required an agile planning strategy. I learned the technologies required as I progressed through the project. This made it impossible for me to  plan the project holistically at the begining. Because of this, I used Jira to plan my project, which allowed for easily digestable, agile planning. Below I have included a snapshot of my backlog taken just before I moved onto creating the presentation attached to this project. 

<p align="left">
  <img width="1400" height="500" src="https://i.imgur.com/G8y0pGO.png">
</p>

### Version Control
This project uses git as the version control system and Github as the Host. Intellij makes it incredibly easy to maintain an agile github repository with inbuilt functionality allowing commits and pushes to be made with one button. 

This has given me confidence that my files are safe from deletion and made it easy for me to track changes to my code. Also, if I decide to go back to this project at a later date to implement further features I can rest assured that I can continue where I left off. 

### Terraform
Terraform is used to spin up the testing environment. This is, an AWS EC2 instance & an AWS RDS instance. More work could be done to improve this. Currently, it is still required to manually add public keys to be able to ssh into the instance, however this can be overcome through terraform. 

### Ansible
This project used ansible to isntall jenkins onto an EC2 instance and print the relevant admin password. The benefit of this is that, should I lose the jenkins EC2 instance, or need to boot the application quickly, I can easily download jenkins on the machine to get started. There are many further improvements I could implement for ansible in this project. Such as, creating the jenkins user in the VM, and configuring a user for jenkins. Ansible could also be used to configure the test & production instances to ensure all  necessary prerequisite sare already installed

### Kubernetes
Kuberenets alongside Kops are used to spin up the live environment. This is, three AWS EC2 instances, a master node & two deployment nodes. This configuration set up is stored in an S3 bucket on AWS which is useful for future replicability. It manages this environment as a cluster which holds many benefits in itself. Arguably the most important of these is its "self-healing" ability. The cluster is set up to define that there should always be at least two instances of the application running. This means that if, for whatever reason, the live server goes down, kubernetes will automatically reboot it. A load balancer has also been included in the cluster design, allowing for sophisticated traffic management.

### Jenkins
Jenkins is used as the continuous integration agent. For this project, its role is sshing into the test machine, providing it with the relevant environment variables, starting the application and running pytest. Assuming these pass, it will then ssh onto the kubernetes master node responsible for managing the cluster, and have it deploy the cluster and therefore the application 

### Docker-Compose
Docker & docker-compose are tools used for containerisation. This is an integral part of my deployment. Both the live and testing environment use docker-compose to deploy the application. The images used for this project are pushed to my dockerhub account, & then pulled to the relevant environment when a request is made. The main benefit to this structure of deployment is that it makes running the application incredibly efficient, from anywhere in the world. The requirments are all stored within the Dockerfiles, and running the application requires just one line of code.



## Additional Information & Resources

[Presentation slides](https://docs.google.com/presentation/d/1wRj3YR49MMrSXnLV5oD6Us0Z-6wxeI92kJhOIwEVWGI/edit?usp=sharing)

Prepared by George Pemberton

