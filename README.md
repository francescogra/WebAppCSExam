# Continuous Integration/Continuous Deployment (CI/CD) con Git, Github, Jenkins, Maven, Ansible e Docker
## Progetto per l'esame di Sistemi Cloud
The aim of the project is to describe the entire CI/CD pipeline for compiling and releasing a Java application. During the project we will be using: Git, a distributed version control software; Github, a hosting service for software projects; Jenkins Server, a continuous integration tool; Maven, a build automation tool; Ansible, a tool for automating configuration and management procedures (provisioning); and Docker, for containerising applications.
The virtual machines on which the entire CI/CD infrastructure resides are provided by Amazon's cloud service: EC2 (Elastic Compute Cloud). Amazon EC2 is a web service capable of providing scalable computing capacity, more specifically it allows the execution of virtual servers capable of hosting services and applications, virtual computing environments better known as instances.
One of the most interesting features of this service, hence the term "elastic", is the possibility of managing variations in requirements, popularity and needs specific to the company and the platform: in essence, Amazon EC2 allows both the calibration of interventions within the space provided and the acquisition and configuration of secure and scalable computing capacity.
Let's take a look at how these technologies work together:

![alt text](https://github.com/pierpaologumina/CloudSystemsExam/blob/main/CI-CD_slide.jpg "CI/CD Pipeline")

1. The developer commits the code to the master branch of the repository.
2. Since the code needs to be compiled, the Jenkins server fetches the code from Github.
3. Jenkins then compiles the code via Maven, producing an artefact.
4. The artefact produced is then copied to the Ansible server.
5. Ansible then creates a docker image from the artefact and uploads it to the
and uploads it to the Docker Hub.
6. The Ansible server will also start the docker container on the docker server, which will retrieve the image from the docker hub.
which will retrieve the image from the docker hub.
