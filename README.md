# 🚀 3-Tier Application Deployment on AWS EKS

## 📌 Overview

This project demonstrates the deployment of a cloud-native 3-tier application on Amazon EKS using Infrastructure as Code (Terraform), containerization (Docker), and Kubernetes orchestration.

The application consists of:

* Frontend: React.js
* Backend: Node.js & Express.js
* Database: MongoDB

The infrastructure is provisioned using Terraform and deployed on AWS Elastic Kubernetes Service (EKS). Application images are stored in Amazon ECR, while Kubernetes workloads are managed through Deployments, Services, Ingress resources, and the AWS Load Balancer Controller.

---

## 🏗️ Architecture

```text
User
  │
  ▼
AWS Application Load Balancer
  │
  ▼
Kubernetes Ingress
  │
  ▼
React Frontend
  │
  ▼
Node.js Backend API
  │
  ▼
MongoDB Database
```

---

## ⚙️ Technologies Used

### Cloud & Infrastructure

* AWS EKS
* AWS ECR
* AWS IAM
* AWS S3
* Terraform

### Containerization & Orchestration

* Docker
* Kubernetes
* Helm
* AWS Load Balancer Controller

### Application Stack

* React.js
* Node.js
* Express.js
* MongoDB
* Mongoose

---

## 📂 Project Structure

```bash
3-tier-app-on-aws-eks/
│
├── backend/
│   ├── models/
│   ├── routes/
│   └── Dockerfile
│
├── frontend/
│   └── React Application
│
├── mongo/
│   └── MongoDB Kubernetes Manifests
│
├── k8s_manifests/
│   ├── Deployments
│   ├── Services
│   ├── Ingress
│   └── ALB Configuration
│
└── terra-config/
    └── Terraform Infrastructure Code
```

---

## 🔥 Key Features

* Infrastructure provisioning using Terraform
* Amazon EKS cluster deployment
* Containerized frontend and backend services
* Docker image management through Amazon ECR
* Kubernetes Deployments and Services
* ALB Ingress Controller integration
* Secure IAM Role and OIDC configuration
* Remote Terraform state management using Amazon S3

---

## 🚀 Deployment Workflow

### 1. Provision Infrastructure

```bash
cd terra-config

terraform init
terraform plan
terraform apply
```

### 2. Build Docker Images

Frontend

```bash
docker build -t frontend .
```

Backend

```bash
docker build -t backend .
```

### 3. Push Images to Amazon ECR

```bash
aws ecr get-login-password
docker tag <image>
docker push <ecr-repository>
```

### 4. Configure kubectl

```bash
aws eks update-kubeconfig \
--region <region> \
--name <cluster-name>
```

### 5. Deploy Kubernetes Resources

```bash
kubectl apply -f k8s_manifests/
kubectl apply -f mongo/
```

### 6. Configure ALB Ingress

```bash
kubectl apply -f full_stack_lb.yaml
```

---

## 📊 Learning Outcomes

Through this project I gained practical experience in:

* Terraform Infrastructure as Code
* Amazon EKS cluster management
* Docker image creation and registry management
* Kubernetes deployments and networking
* Helm package management
* AWS IAM and OIDC integration
* Application Load Balancer configuration
* Production-style cloud deployment workflows

---

## 🔮 Future Improvements

* CI/CD pipeline using GitHub Actions
* Monitoring with Prometheus and Grafana
* Centralized logging with EFK Stack
* Horizontal Pod Autoscaling
* HTTPS with AWS ACM
* Terraform module refactoring

---

## 👨‍💻 Author

Mohammed

Computer Science Engineer

Focused on Cloud Computing, DevOps, Kubernetes, Terraform, AWS, and Backend Development.

Connect With Me
LinkedIn: www.linkedin.com/in/mohammeda2003

---

## ⭐ Repository

If you found this project useful, consider giving it a star.
