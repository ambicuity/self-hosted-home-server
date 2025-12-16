# Complete Service Inventory

This document lists all 100+ services available in this home server setup.

## Quick Stats
- **Total Service Categories**: 22
- **Total Individual Services**: 100+
- **Docker Compose Files**: 22
- **Required**: Docker, Docker Compose, Domain name (recommended)

---

## 🔐 Core Infrastructure (5 services)

### reverse-proxy/
1. **Traefik** - Reverse proxy with automatic HTTPS
2. **Certificate Manager** - Let's Encrypt integration
3. **Load Balancer** - Built into Traefik
4. **Docker Network** - Shared proxy network
5. **SSL/TLS Handler** - Automatic certificate management

**Access**: https://traefik.your-domain.com

---

## 🎬 Media Server (6 services)

### media-server/
1. **Jellyfin** - Media streaming server
2. **Sonarr** - TV show management
3. **Radarr** - Movie management
4. **Prowlarr** - Indexer manager
5. **Bazarr** - Subtitle downloader
6. **Jellyseerr** - Media request management

**Access**: https://jellyfin.your-domain.com (and others)

---

## 📁 File Server (2 services)

### file-server/
1. **Nextcloud** - Self-hosted cloud storage
2. **Collabora Office** - Online document editing

**Access**: https://nextcloud.your-domain.com

---

## 🛡️ Ad Blocking & DNS (2 services)

### ad-blocker/
1. **Pi-hole** - Network-wide ad blocker
2. **Unbound** - Recursive DNS resolver

**Access**: https://pihole.your-domain.com/admin

---

## 🏠 Home Automation (3 services)

### home-automation/
1. **Home Assistant** - Central automation hub
2. **Node-RED** - Visual programming for automation
3. **Mosquitto** - MQTT broker for IoT

**Access**: http://your-server-ip:8123 (Home Assistant)

---

## 🔒 VPN Server (2 services)

### vpn-server/
1. **WireGuard** - VPN server
2. **WireGuard UI** - Web management interface

**Access**: https://vpn.your-domain.com

---

## 🌐 Web Servers (4 services)

### web-server/
1. **NGINX** - Static site hosting
2. **WordPress** - CMS and blogging platform
3. **Ghost** - Modern publishing platform
4. **Hugo** - Static site generator server

**Access**: https://www.your-domain.com (and others)

---

## 🎮 Game Servers (2 services)

### game-server/
1. **Minecraft** - Minecraft server (configurable)
2. **Valheim** - Valheim dedicated server

**Connection**: Direct IP:port connection

---

## 📥 Download Management (3 services)

### downloads/
1. **qBittorrent** - Feature-rich torrent client
2. **SABnzbd** - Usenet downloader
3. **Transmission** - Lightweight torrent client

**Access**: https://qbittorrent.your-domain.com (and others)

---

## 💾 Databases (5 services)

### databases/
1. **PostgreSQL** - Advanced relational database
2. **MySQL** - Popular relational database
3. **MongoDB** - NoSQL document database
4. **Redis** - In-memory data store
5. **Adminer** - Database management UI

**Access**: https://adminer.your-domain.com

---

## 🔐 Password Management (1 service)

### password-manager/
1. **Vaultwarden** - Bitwarden-compatible password manager

**Access**: https://vault.your-domain.com

---

## 📸 Photo Management (5 services)

### photos/
1. **PhotoPrism** - AI-powered photo management
2. **PhotoPrism Database** - MariaDB for PhotoPrism
3. **Immich** - High-performance photo backup
4. **Immich ML** - Machine learning service
5. **Immich Database** - PostgreSQL for Immich

**Access**: https://photos.your-domain.com, https://immich.your-domain.com

---

## 📝 Productivity Tools (6 services)

### productivity/
1. **BookStack** - Documentation platform
2. **BookStack Database** - MariaDB
3. **Wiki.js** - Modern wiki software
4. **Wiki.js Database** - PostgreSQL
5. **Standard Notes** - Encrypted notes
6. **Standard Notes Database** - MySQL

**Access**: https://docs.your-domain.com, https://wiki.your-domain.com, https://notes.your-domain.com

---

## 📡 Network Tools (6 services)

### network-tools/
1. **Uptime Kuma** - Uptime monitoring
2. **Netdata** - Real-time performance monitoring
3. **Speedtest Tracker** - Internet speed logging
4. **LibreSpeed** - Speed test tool
5. **Nginx Proxy Manager** - Alternative reverse proxy with UI
6. **Network Diagnostics** - Built-in tools

**Access**: https://uptime.your-domain.com (and others)

---

## 💻 Development Tools (5 services)

### development/
1. **Code Server** - VS Code in browser
2. **Docker Registry** - Private container registry
3. **Registry UI** - Web interface for registry
4. **PostgreSQL Dev** - Development database
5. **Adminer Dev** - Database admin tool

**Access**: https://code.your-domain.com (and others)

---

## 🔄 CI/CD (5 services)

### ci-cd/
1. **Gitea** - Self-hosted Git service
2. **Gitea Database** - PostgreSQL
3. **Drone** - CI/CD platform
4. **Drone Runner** - Pipeline executor
5. **Jenkins** - Automation server

**Access**: https://git.your-domain.com, https://drone.your-domain.com, https://jenkins.your-domain.com

---

## 💾 Backup Solutions (3 services)

### backup/
1. **Duplicati** - User-friendly backup solution
2. **Restic** - Fast, secure backup tool
3. **Kopia** - Modern backup solution

**Access**: https://backup.your-domain.com (and others)

---

## 🔒 Security Services (5 services)

### security/
1. **Authelia** - SSO and 2FA provider
2. **Fail2ban** - Intrusion prevention system
3. **CrowdSec** - Collaborative security engine
4. **CrowdSec Bouncer** - Traefik integration
5. **Wazuh Agent** - Security monitoring

**Access**: https://auth.your-domain.com

---

## 💬 Communication (10 services)

### communication/
1. **Matrix Synapse** - Decentralized chat server
2. **Synapse Database** - PostgreSQL
3. **Element Web** - Matrix web client
4. **Jitsi Web** - Video conferencing web interface
5. **Jitsi Prosody** - XMPP server
6. **Jitsi Jicofo** - Conference focus component
7. **Jitsi JVB** - Video bridge
8. **Mattermost** - Team collaboration platform
9. **Mattermost Database** - PostgreSQL
10. **Redis** - Cache for Matrix

**Access**: https://matrix.your-domain.com, https://chat.your-domain.com, https://meet.your-domain.com, https://mattermost.your-domain.com

---

## 📊 Monitoring Stack (5 services)

### monitoring/
1. **Prometheus** - Metrics collection and storage
2. **Grafana** - Visualization and dashboards
3. **Node Exporter** - System metrics exporter
4. **cAdvisor** - Container metrics exporter
5. **Alertmanager** - Alert management

**Access**: https://grafana.your-domain.com, https://prometheus.your-domain.com, https://alerts.your-domain.com

---

## 📈 Analytics (7 services)

### analytics/
1. **Matomo** - Comprehensive web analytics
2. **Matomo Database** - MariaDB
3. **Plausible** - Privacy-friendly analytics
4. **Plausible Database** - PostgreSQL
5. **Plausible Events DB** - ClickHouse
6. **Umami** - Simple analytics
7. **Umami Database** - PostgreSQL

**Access**: https://analytics.your-domain.com, https://plausible.your-domain.com, https://umami.your-domain.com

---

## 🐳 Container Management (1 service)

### portainer/
1. **Portainer** - Docker management UI

**Access**: https://portainer.your-domain.com

---

## Total Count by Category

| Category | Services |
|----------|----------|
| Core Infrastructure | 5 |
| Media Server | 6 |
| File Server | 2 |
| Ad Blocking & DNS | 2 |
| Home Automation | 3 |
| VPN | 2 |
| Web Servers | 4 |
| Game Servers | 2 |
| Downloads | 3 |
| Databases | 5 |
| Password Manager | 1 |
| Photos | 5 |
| Productivity | 6 |
| Network Tools | 6 |
| Development | 5 |
| CI/CD | 5 |
| Backup | 3 |
| Security | 5 |
| Communication | 10 |
| Monitoring | 5 |
| Analytics | 7 |
| Container Management | 1 |
| **TOTAL** | **100+** |

---

## Service Requirements

### Minimum Services (Core functionality)
- Traefik (reverse proxy)
- Portainer (management)
- Choose at least 1-2 services from each category you need

### Recommended Services (Complete experience)
- All infrastructure services
- Media server stack
- Monitoring stack
- Security services
- At least one from each category

### Resource Requirements by Service Count

| Services | CPU | RAM | Storage |
|----------|-----|-----|---------|
| 10-20 | 2 cores | 8 GB | 100 GB |
| 20-50 | 4 cores | 16 GB | 250 GB |
| 50-75 | 6 cores | 24 GB | 500 GB |
| 75-100+ | 8+ cores | 32+ GB | 1+ TB |

---

## Quick Start Priority

Recommended order to start services:

1. **Core** (reverse-proxy, portainer)
2. **Databases** (if other services need them)
3. **Security** (authelia, fail2ban)
4. **Monitoring** (prometheus, grafana)
5. **Your choice** (media, files, communication, etc.)

---

## Notes

- All services are optional except Traefik (reverse proxy)
- Services within a category often work together (e.g., media server stack)
- Database services are shared by multiple applications
- Some services have their own databases included
- Network tools and monitoring help keep everything running smoothly

---

**Made by: Ritesh Rana**  
Software Engineer | DevOps | AI & Systems Architecture
