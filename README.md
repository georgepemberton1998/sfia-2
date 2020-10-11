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
  - [Environments](#environments)
- [Additional Information & Resources](#additional-information--resources)

 ----

## Design

The MVP of this project is to deploy the application in a way such that it is integrated into a Jenkins Pipeline job, which is hosted on an AWS EC2 instance. Jenkins uses this job, working with the version control system (Git, Github) to containerise and build the application in a testing environment using Docker-Compose . A Webhook has been implemented so that whenever a push is made to the project repository, the Pipeline job will automatically run. After the application has been built, it is pushed to Dockerhub, where it can be accessed by kubernetes to deploy the application to the live environment.

## Risk Assessment
While in reality the risks associated with this project are relatively low, a risk assessment is still neccessary. Below is a collection of the risks I have identified and their corresponding likelihood & impact.

<p align="center">
  <img width="1400" height="500" src="https://i.imgur.com/cRjVUY7.png">
</p>

## Creation

### Planning
This project in its very nature required an agile planning strategy. I learned the technologies required as I progressed through the project. This made it impossible for me to  plan the project holistically at the begining. Also, as I learnt the relevant technologies, previous ideas proved too difficult considering the time constraint. Because of this, I used Jira to plan my project, which allowed for easily digestable, agile planning. Below I have included a snapshot of my backlog taken just before I had my application up and running. 

<p align="left">
  <img width="383" height="250" src="https://i.imgur.com/G8y0pGO.png">
</p>

### Version Control
This project uses git as the version control system and Github as the Host. Intellij makes it incredibly easy to maintain an agile github repository with inbuilt functionality allowing commits and pushes to be made with one button. 

This has given me confidence that my application data is safe from deletion and made it easy for me to track changes to my code. Also, if I decide to go back to this project at a later date to implement further features I can rest assured that I can continue where I left off. 

### Ansible

### Docker-Compose

### Jenkins

### Kubernetes

### Terraform

### Environments

#### Testing Environment

#### Live Environement








## Additional Information & Resources

Prepared by George Pemberton

