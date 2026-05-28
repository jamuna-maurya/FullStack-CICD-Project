#  Full Stack CI/CD Project

##  Project Overview

This project demonstrates an **End-to-End CI/CD Pipeline** for a Full-Stack Application using:

* Frontend → React.js
* Backend → Node.js + Express
* Database → MongoDB
* CI/CD → GitHub Actions
* Containerization → Docker
* Cloud Deployment → AWS EC2
* Reverse Proxy → Nginx

The complete pipeline automates:

```text
Code Push → Build → Dockerize → Push Image → Deploy to AWS EC2
```

---

#  Project Architecture

```text
Developer
   │
   ▼
GitHub Repository
   │
   ▼
GitHub Actions CI/CD Pipeline
   │
   ├── Install Dependencies
   ├── Build Application
   ├── Build Docker Images
   ├── Push Docker Images
   └── Deploy to AWS EC2
                │
                ▼
          Docker Compose
                │
        ┌───────┴────────┐
        ▼                ▼
   Frontend          Backend API
     React             Node.js
                │
                ▼
             MongoDB
```

---

#  Tech Stack

| Technology        | Purpose          |
| ----------------- | ---------------- |
| React.js          | Frontend         |
| Node.js + Express | Backend API      |
| MongoDB           | Database         |
| Docker            | Containerization |
| GitHub Actions    | CI/CD Automation |
| AWS EC2           | Cloud Deployment |
| Nginx             | Reverse Proxy    |
| Docker Hub        | Image Registry   |

---

#  Project Structure

```text
FullStack-CICD-Project/
│
├── frontend/
│   ├── Dockerfile
│
├── backend/
│   ├── Dockerfile
│
├── .github/workflows/
│   ├── cicd.yml
│
├── docker-compose.yml
├── nginx.conf
├── README.md
```

---

#  CI/CD Workflow

## Automated Pipeline Flow

```text
Git Push
   ↓
GitHub Actions Triggered
   ↓
Install Dependencies
   ↓
Build React Application
   ↓
Build Docker Images
   ↓
Push Images to Docker Hub
   ↓
Connect to AWS EC2
   ↓
Docker Compose Pull
   ↓
Containers Restart
   ↓
 Live Application Updated
```

---

#  Docker Containers

This project runs multiple containers:

| Container | Purpose           |
| --------- | ----------------- |
| frontend  | React Application |
| backend   | Node.js API       |
| mongo     | MongoDB Database  |
| nginx     | Reverse Proxy     |

---

#  Installation & Setup

##  Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/FullStack-CICD-Project.git

cd FullStack-CICD-Project
```

---

##  Run with Docker Compose

```bash
docker compose up -d --build
```

---

##  Verify Running Containers

```bash
docker ps
```

Expected:

```text
frontend
backend
mongo
nginx
```

---

#  AWS EC2 Deployment

## Connect to EC2

```bash
ssh -i key.pem ubuntu@YOUR_EC2_PUBLIC_IP
```

---

## Install Docker

```bash
sudo apt update -y
sudo apt install docker.io docker-compose-v2 git -y
```

---

#  GitHub Secrets

Add these secrets inside:

```text
GitHub Repo → Settings → Secrets and Variables → Actions
```

| Secret Name     | Description         |
| --------------- | ------------------- |
| DOCKER_USERNAME | Docker Hub Username |
| DOCKER_PASSWORD | Docker Hub Password |
| EC2_HOST        | EC2 Public IP       |
| EC2_USERNAME    | ubuntu              |
| EC2_SSH_KEY     | Private PEM Key     |

---

#  Project Screenshots

##  GitHub Actions Pipeline Success
 
 <img width="2762" height="906" alt="image" src="https://github.com/user-attachments/assets/06605257-e1fc-4518-b5c6-8b6596a414eb" />


Example View:

```text
✔ Checkout Repository
✔ Setup Node.js
✔ Build Docker Images
✔ Push Docker Images
✔ Deploy to EC2
✔ Success
```

---

##  Docker Containers Running

Example:

```text
CONTAINER ID   IMAGE
xxxx           frontend-app
xxxx           backend-app
xxxx           mongo
xxxx           nginx
```

---

##  Live Application on AWS EC2

<img width="2208" height="764" alt="image" src="https://github.com/user-attachments/assets/1b79afb1-1101-4e16-b474-0d0f89298993" />


Example Browser Output:

```text
Full Stack CI/CD Project 
Frontend running successfully
```

<img width="1110" height="618" alt="image" src="https://github.com/user-attachments/assets/c3609ae4-4013-45d5-8d67-4ff90e7e86ca" />


<img width="1878" height="876" alt="image" src="https://github.com/user-attachments/assets/aaf271c0-5ed6-4c13-bfd5-29b41ce2801f" />


---

##  Docker Hub Images

<img width="2004" height="222" alt="image" src="https://github.com/user-attachments/assets/65d71b4b-7771-45e9-99bb-7798994594bc" />


Example:

```text
frontend-app:latest
backend-app:latest
```

---

##  Screenshot Folder Structure

```text
FullStack-CICD-Project/
│
├── screenshots/
│   ├── github-actions-success.png
│   ├── docker-ps.png
│   ├── live-app.png
│   └── dockerhub-images.png
```

---

#  Features

✅ End-to-End CI/CD Pipeline
✅ Automated Docker Build & Push
✅ AWS EC2 Auto Deployment
✅ Dockerized Full-Stack Application
✅ Nginx Reverse Proxy
✅ MongoDB Integration
✅ GitHub Actions Automation
✅ Production-Style Workflow

---

#  Commands Used

```bash
docker ps

docker compose up -d

docker compose pull

git add .

git commit -m "updated project"

git push
```

---

#  Future Improvements

* Kubernetes Deployment
* Terraform Infrastructure
* HTTPS with Let's Encrypt
* Monitoring with Prometheus & Grafana
* Blue-Green Deployment
* Jenkins Integration
* AWS EKS

---

#  Learning Outcomes

This project helped in understanding:

* CI/CD Fundamentals
* Docker Containerization
* Cloud Deployment
* GitHub Actions Automation
* Reverse Proxy Configuration
* DevOps Lifecycle
* Infrastructure Automation

---

#  Author

## jeny

DevOps & Cloud Enthusiast 

GitHub: [https://github.com/YOUR_USERNAME](https://github.com/YOUR_USERNAME)

LinkedIn: [https://linkedin.com/in/YOUR_LINKEDIN](https://linkedin.com/in/YOUR_LINKEDIN)

---

#  Conclusion

This project demonstrates a complete DevOps workflow where every code push automatically triggers build, containerization, and deployment using GitHub Actions, Docker, and AWS EC2.

It simulates a real-world production deployment pipeline used by modern software companies.


