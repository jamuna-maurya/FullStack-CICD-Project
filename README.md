#  Full Stack CI/CD Project

A complete DevOps Full Stack CI/CD Pipeline Project using:

- React Frontend
- Node.js Backend
- MongoDB
- Docker
- Docker Compose
- Nginx Reverse Proxy
- GitHub Actions CI/CD
- Docker Hub
- AWS EC2 Deployment

---

#  Project Architecture

```text
                 ┌──────────────────────┐
                 │      Developer       │
                 │    Push Code GitHub  │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │      GitHub Repo     │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │   GitHub Actions     │
                 │   CI/CD Pipeline     │
                 └──────────┬───────────┘
                            │
          ┌─────────────────┴─────────────────┐
          ▼                                   ▼
┌──────────────────┐               ┌──────────────────┐
│ Build Frontend   │               │ Build Backend    │
│ Docker Image     │               │ Docker Image     │
└────────┬─────────┘               └────────┬─────────┘
         │                                   │
         └──────────────┬────────────────────┘
                        ▼
              ┌──────────────────┐
              │    Docker Hub    │
              │ Push Docker Img  │
              └────────┬─────────┘
                       │
                       ▼
              ┌──────────────────┐
              │      AWS EC2     │
              │ Auto Deployment  │
              └────────┬─────────┘
                       │
                       ▼
              ┌──────────────────┐
              │  Live Application │
              └──────────────────┘


##  Project Structure
FullStack-CICD-Project/
│
├── frontend/
│   ├── Dockerfile
│   ├── package.json
│   └── src/
│
├── backend/
│   ├── Dockerfile
│   ├── package.json
│   └── server.js
│
├── nginx/
│   └── nginx.conf
│
├── docker-compose.yml
│
├── .github/
│   └── workflows/
│       └── cicd.yml
│
└── README.md



## Technologies Used

| Technology     | Purpose               |
| -------------- | --------------------- |
| React          | Frontend              |
| Node.js        | Backend               |
| MongoDB        | Database              |
| Docker         | Containerization      |
| Docker Compose | Multi-container setup |
| Nginx          | Reverse Proxy         |
| GitHub Actions | CI/CD Pipeline        |
| Docker Hub     | Image Registry        |
| AWS EC2        | Deployment Server     |



# Docker Setup
1. Build Containers
    docker-compose build
2. Start Containers
    docker-compose up -d
3. Check Running Containers
    docker ps


# GitHub Secrets

Add these secrets inside:
GitHub Repository → Settings → Secrets and Variables → Actions

Secret Name                 	Description
DOCKER_USERNAME	          Docker Hub Username
DOCKER_PASSWORD	          Docker Hub Password
EC2_HOST	                AWS EC2 Public IP
EC2_USERNAME            	EC2 Username
EC2_SSH_KEY             	Private SSH Key


# Application URLs
Frontend
http://localhost

Backend API
http://localhost/api

# AWS EC2 Deployment
Pull Docker Images
docker pull your-Dockerhub-name/frontend-app:latest
docker pull your-Dockerhub-name/backend-app:latest

Run Containers
docker run -d --name frontend -p 3000:3000 your-Dockerhub-name/frontend-app:latest
docker run -d --name backend -p 5000:5000 your-Dockerhub-name/backend-app:latest


# GitHub Actions CI/CD Pipeline

The pipeline automatically:
✔ Builds Docker Images
✔ Pushes Images to Docker Hub
✔ Deploys to AWS EC2
✔ Updates Live Application


# Docker Hub Images

Frontend Image:
 your-Dockerhub-name/frontend-app:latest

Backend Image:
 your-Dockerhub-name/backend-app:latest



Author

Jeny

---
