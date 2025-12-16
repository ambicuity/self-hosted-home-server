# 🏠 Complete Home Server - 100+ Self-Hosted Services

> **Made By: Ritesh Rana**  
> Software Engineer | DevOps | AI & Systems Architecture

A **production-ready, beginner-friendly** home server setup with **100+ services**, fully containerized with Docker and Docker Compose. Everything you need to replace cloud services and take control of your data.

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Docker Compose](https://img.shields.io/badge/Docker_Compose-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://docs.docker.com/compose/)

---

## 📋 Table of Contents

- [What is This?](#-what-is-this)
- [Service List (100+)](#-complete-service-list-100)
- [Quick Start](#-quick-start)
- [Documentation](#-documentation)

---

## 🎯 What is This?

This is a **complete, production-ready home server** built entirely with Docker. It includes over **100 self-hosted services** covering media, files, security, monitoring, development, communication, and more.

Everything is **modular**, **documented**, and **ready to use**.

---

## 📦 Complete Service List (100+)

This repository provides **100+ containerized services** across the following categories:

### Infrastructure & Core (5)
- Traefik (Reverse Proxy + SSL)
- Portainer (Container Management)
- Docker Networks
- Certificate Management
- Load Balancing

### Media Server (6)
- Jellyfin, Sonarr, Radarr, Prowlarr, Bazarr, Jellyseerr

### File & Cloud (2)
- Nextcloud + Collabora Office

### Network & Security (15)
- Pi-hole, Unbound, WireGuard, Authelia, Fail2ban, CrowdSec, and more

### Home Automation (3)
- Home Assistant, Node-RED, Mosquitto MQTT

### Databases (5)
- PostgreSQL, MySQL, MongoDB, Redis, Adminer

### Development (10+)
- Code Server, Gitea, Drone, Jenkins, Docker Registry, and more

### Monitoring & Analytics (12+)
- Prometheus, Grafana, Netdata, Uptime Kuma, Matomo, Plausible, Umami

### Communication (10)
- Matrix Synapse, Element, Jitsi Meet, Mattermost

### Productivity (6+)
- BookStack, Wiki.js, Standard Notes, Vaultwarden

### Photos (5)
- PhotoPrism, Immich

### Downloads (3)
- qBittorrent, SABnzbd, Transmission

### Backup (3)
- Duplicati, Restic, Kopia

### Web Servers (4)
- NGINX, WordPress, Ghost, Hugo

### Game Servers (2)
- Minecraft, Valheim

**Total: 100+ Services**

---

## 🚀 Quick Start

```bash
# Clone repository
git clone https://github.com/ambicuity/self-hosted-home-server.git
cd self-hosted-home-server

# Configure a service
cd reverse-proxy
cp .env.example .env
nano .env

# Create network
docker network create proxy

# Start service
docker compose up -d

# Or start all
cd ..
./scripts/start-all.sh
```

---

## 📖 Documentation

### Prerequisites
- Docker 20.10+ and Docker Compose v2+
- Linux/macOS/Windows with WSL2
- Domain name (recommended)
- Hardware: Min 8GB RAM, 100GB storage

### Detailed Setup Guide

See sections in code for:
- **Installation** - Docker, system setup
- **Configuration** - Environment variables, secrets
- **Service Guides** - How to use each service
- **Security** - Best practices, firewall, backups
- **Troubleshooting** - Common issues and solutions
- **Interview Tips** - DevOps insights

### Key Features

✅ **Automatic HTTPS** with Let's Encrypt  
✅ **Single Sign-On** with Authelia  
✅ **Complete Monitoring** with Prometheus/Grafana  
✅ **Network-wide Ad Blocking** with Pi-hole  
✅ **Secure Remote Access** with WireGuard  
✅ **Media Streaming** with Jellyfin  
✅ **File Sync** with Nextcloud  
✅ **Password Management** with Vaultwarden  
✅ **Development Tools** (Code Server, Git, CI/CD)  
✅ **Communication** (Chat, Video Conferencing)  
✅ **And 80+ more services!**

---

## 📁 Repository Structure

```
self-hosted-home-server/
├── reverse-proxy/       # Traefik + SSL
├── portainer/          # Container Management UI
├── media-server/       # Jellyfin + Arr Suite
├── file-server/        # Nextcloud + Collabora
├── ad-blocker/         # Pi-hole + Unbound
├── home-automation/    # Home Assistant Stack
├── vpn-server/         # WireGuard VPN
├── monitoring/         # Prometheus + Grafana
├── databases/          # PostgreSQL, MySQL, MongoDB, Redis
├── development/        # Code Server, Registry
├── ci-cd/             # Gitea, Drone, Jenkins
├── downloads/          # qBittorrent, SABnzbd
├── photos/            # PhotoPrism, Immich
├── productivity/       # BookStack, Wiki.js
├── password-manager/   # Vaultwarden
├── network-tools/      # Uptime Kuma, Netdata
├── analytics/          # Matomo, Plausible, Umami
├── communication/      # Matrix, Jitsi, Mattermost
├── security/           # Authelia, Fail2ban, CrowdSec
├── backup/            # Duplicati, Restic, Kopia
├── web-server/        # NGINX, WordPress, Ghost
├── game-server/       # Minecraft, Valheim
└── scripts/           # Helper scripts
```

Each directory contains:
- `docker-compose.yml` - Service definition
- `.env.example` - Configuration template
- Additional config files as needed

---

## 🖥️ Common Commands

```bash
# Start all services
./scripts/start-all.sh

# Stop all services
./scripts/stop-all.sh

# Update all services
./scripts/update-all.sh

# View running containers
docker ps

# View logs
docker logs <container-name>

# Access a container
docker exec -it <container-name> bash
```

---

## 🔒 Security Best Practices

1. **Firewall**: Only expose ports 80, 443, and VPN
2. **Strong Passwords**: Use password manager (Vaultwarden)
3. **2FA**: Enable on all services that support it
4. **Updates**: Run `./scripts/update-all.sh` weekly
5. **Backups**: Configure automated backups
6. **Monitoring**: Check Grafana dashboards daily
7. **SSL/TLS**: Let Traefik handle certificates
8. **VPN**: Use WireGuard for remote access

---

## 🎓 Why This Project?

### For Learning
- Master Docker and containerization
- Learn reverse proxies and networking
- Understand DevOps practices
- Build portfolio projects

### For Privacy
- Own your data
- No cloud subscriptions
- Full control
- GDPR compliant

### For Cost Savings
- Replace $50-200/month in subscriptions
- One-time hardware cost
- Share with family

### For Career
- Portfolio-worthy DevOps project
- Interview talking points
- Real production experience
- Industry best practices

---

## 🤝 Contributing

Contributions welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Test thoroughly
4. Submit a pull request

---

## 📚 Resources

- [Docker Docs](https://docs.docker.com/)
- [Traefik Docs](https://doc.traefik.io/)
- [r/selfhosted](https://www.reddit.com/r/selfhosted/)

---

## 📝 License

MIT License - See [LICENSE](LICENSE) file

---

## 🙏 Acknowledgments

- Open source community
- LinuxServer.io for containers
- Self-hosting community

---

> **Made By: Ritesh Rana**  
> Software Engineer | DevOps | AI & Systems Architecture
>
> *Building production-ready infrastructure that empowers individuals to take control of their digital lives.*

**⭐ Star this repo if it helped you! ⭐**
