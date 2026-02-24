 EC2 Web App CI/CD using Terraform & Jenkins

 Project Overview
This project demonstrates an automated CI/CD pipeline for deploying a web application on AWS EC2 using Infrastructure as Code (IaC). The infrastructure is provisioned using Terraform, and deployment automation is handled through Jenkins.

The objective of this project is to implement DevOps practices by automating infrastructure provisioning and application deployment in a cloud environment.
Reduced manual deployment effort by 100% by automating infrastructure provisioning and application deployment using Terraform and Jenkins
---

# 🏗️ Architecture Flow

1. Developer pushes code to GitHub repository.
2. Jenkins server (hosted on AWS EC2) detects changes.
3. Jenkins executes Terraform scripts.
4. Terraform provisions or updates AWS EC2 infrastructure.
5. Web application is automatically deployed to the EC2 instance.

 ---

    Developer
        |
        v
    GitHub Repository
        |
        v
    Jenkins Pipeline
        |
        v
    Terraform
        |
        v
    AWS EC2 Instance
        |
        v
 Deployed Web Application
---

## 🛠️ Technologies Used

- AWS EC2
- Terraform
- Jenkins
- Git & GitHub
- Linux (Amazon Linux 3)

---

## ⚙️ Setup Instructions

### Step 1: Launch Jenkins Server
- Create an EC2 instance.
- Open ports 22 (SSH) and 8080 (Jenkins) in Security Group.
- Install Java and Jenkins.
- Start and enable Jenkins service.

### Step 2: Configure Jenkins
- Access Jenkins via `http://<public-ip>:8080`
- Install recommended plugins.
- Configure GitHub repository.
- Add AWS credentials in Jenkins.
- Install Terraform on Jenkins server.

### Step 3: Execute CI/CD Pipeline
- Push code changes to GitHub.
- Jenkins automatically triggers pipeline.
- Terraform initializes, plans, and applies infrastructure.
- Web application gets deployed to EC2 automatically.

---

## 🎯 Key Features

- Infrastructure as Code using Terraform
- Automated CI/CD pipeline using Jenkins
- Cloud-based deployment on AWS EC2
- Fully automated web application deployment

---

## 📈 Learning Outcomes

- Hands-on experience with DevOps workflow
- AWS infrastructure provisioning
- Jenkins pipeline automation
- Terraform state and configuration management
- CI/CD integration with GitHub

---

## 👩‍💻 Author

Muskan Tandel  
Final Year Computer Engineering Student  
Aspiring Cloud & DevOps Engineer
you can connect with me through linkedin
https://www.linkedin.com/in/muskaan-tandel-b59bb8343/

