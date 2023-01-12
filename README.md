# Setup Spring boot Application on Ubuntu instance using Jenkins Pipeline CI/CD and Docker

In this GitHub repo, we are going to focus on Spring Boot application deployment. We will be using GitHUB, Jenkins, Docker and DockerHub. We are going to setup every component on Ubuntu VM as it is base operating system.

## Pre-Requisite:

1.	Ubuntu server
2.	Java: Install Java JDK8 on Ubuntu server
4.	Maven: Install Maven on Ubuntu server
5.	Docker: Install Docker on Ubuntu server
6.	Jenkins: Install Jenkins server on Ubuntu server
7.	Jenkins: Install plugin Git, Maven, and Docker
8.	Jenkins: Add Git user in jenkins
9.	Add Jenkinsfile and pipeline script
10.	Add Dockerfile
11.	Create job pipeline project.
12.	Build Project.

### GitHub: 
We are using GitHub as a version control to push our code.

### DockerHub:
Secondly, we are using DockerHub for uploading/pushing the Docker image.

## Jenkins Pipeline Struture:

![image](https://user-images.githubusercontent.com/76844360/212002083-6a8fd802-def1-4471-bad8-5b4bb0450c58.png)

### Install plugin Git, Maven, and Docker:

![image](https://user-images.githubusercontent.com/76844360/212016572-460a2969-37ed-4292-8840-be9ff611e742.png)

### Add Git User in Jenkins:

![image](https://user-images.githubusercontent.com/76844360/212017101-af6d2de3-d38c-47a3-9888-de71d4011dc7.png)


### Now Look at Spring Boot Application folder Struture: 
-	First, you can clone repo (source code)

![image](https://user-images.githubusercontent.com/76844360/212006367-db190f5a-e817-44d9-a64e-6788847f29c4.png)

-	Add Dockerfile and Jenkinsfile in Code:

![image](https://user-images.githubusercontent.com/76844360/212006778-3e8f2842-500e-4973-94eb-848c77ca6f4b.png)

## Dockerfile:
- This is Dockerfile for building the docker image.

![image](https://user-images.githubusercontent.com/76844360/212007317-f41f04e1-e8ed-4097-a5ee-fcfc73d91d80.png)

### Define stages in Jenkinsfile : 

1. Stage: Clone/checkout the source code from GitHub repo
2. Stage: Build the Application
3. Stage: Build the Docker Image 
4. Stage: Login The Docker into server 
5. Stage: Push the Image to Docker Hub
6. Stage: Run the Application

## Jenkinsfile:

![image](https://user-images.githubusercontent.com/76844360/212008029-102e5d9a-17bb-4e66-a28c-089cc047cefb.png)

### Create the Jenkins Pipeline for Spring boot application:
#### Steps: 
1. Step: Go to Jenkins --> Click New Item
2. Step: Enter the Pipeline name **SpringBoot_Web_Application**
3. Step: Click Ok

![image](https://user-images.githubusercontent.com/76844360/212009489-8967055c-debf-4d38-9513-5c9ff3b068fc.png)

### Configuration Jenkins Pipeline for Spring boot application:

**[Configuration Jenkins Pipeline Image.pdf](https://github.com/owais2021/Setup-Spring-boot-Application-Jenkins-Pipeline/files/10399408/Configuration.Jenkins.Pipeline.Image.pdf)**

![image](https://user-images.githubusercontent.com/76844360/212010708-83367bc7-38d5-4fb6-8822-542b0aeb9af1.png)

### After Configuration Complete run the Application: 
- Click on Build Now option

![image](https://user-images.githubusercontent.com/76844360/212010893-6e8e2ed5-dac4-4ddb-baea-196b4ff265f0.png)

### Console Output: 

**[Console Output Image for Application.pdf](https://github.com/owais2021/Setup-Spring-boot-Application-Jenkins-Pipeline/files/10399391/Console.Output.Image.for.Application.pdf)**

![image](https://user-images.githubusercontent.com/76844360/212012531-3fe3df07-d3f5-4fc9-921e-67709d35dc87.png)

### You can see the Stage View in Jenkins Pipeline

![image](https://user-images.githubusercontent.com/76844360/212012676-5c061773-b93b-471f-8456-5938c2e8b874.png)

### Application Image is showing on DockerHub:

![image](https://user-images.githubusercontent.com/76844360/212012809-dba3d65a-bc18-4c96-a6ad-773d3a64b5c4.png)




