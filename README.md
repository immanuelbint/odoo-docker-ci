# 🚀 Odoo Docker CI/CD Pipeline

Automated deployment for custom Odoo 16 instance using Docker and GitLab CI/CD.

## 🔧 Tech Stack

- Docker
- GitLab CI/CD
- Odoo 16
- Linux Shell Scripting
- PostgreSQL (external DB)
- Custom Addons Integration

## 📦 Features

- Custom Odoo image with external addons and dependencies
- Versioned Docker image builds with Git commit SHA
- CI/CD stages for build, test, and deploy
- Auto-deployment to server via GitLab Runners
- External PostgreSQL support (local or cloud DB)
- Ready for production use with persistent volume

## 🔐 CI/CD Variables Required

Make sure the following variables are defined in your GitLab CI/CD settings:

- `db_host`
- `db_port`
- `db_user`
- `db_password`

These will be injected into `odoo.conf` using `envsubst`.

## 🚀 CI/CD Workflow

1. **Push to `dev` branch**  
   → Build and copy build result to deployment folder

2. **Push to `main` branch**  
   → Build Docker image, push to registry, and auto-deploy

## 🛠️ Deployment Requirements

- GitLab Runner with Docker or Shell executor
- External PostgreSQL running (can be on another host or container)
- Docker installed on target server

## 🐳 Docker Run Example

```bash
docker run -d -p 8069:8069 --restart unless-stopped --name odoo-container $IMAGE_TAG
```
