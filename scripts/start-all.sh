#!/bin/bash

# Home Server - Start All Services Script
# This script starts all Docker Compose services in the correct order

set -e

echo "========================================="
echo "  Home Server - Starting All Services"
echo "========================================="
echo ""

# Color codes for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to start a service
start_service() {
    local service_name=$1
    local service_path=$2
    
    if [ -d "$service_path" ] && [ -f "$service_path/docker-compose.yml" ]; then
        echo -e "${YELLOW}Starting $service_name...${NC}"
        
        if [ -f "$service_path/.env" ]; then
            cd "$service_path"
            docker compose up -d
            echo -e "${GREEN}✓ $service_name started${NC}"
        else
            echo -e "${RED}✗ $service_name: .env file not found. Please copy .env.example to .env and configure it.${NC}"
        fi
        echo ""
    fi
}

# Get the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"

cd "$BASE_DIR"

echo "Base directory: $BASE_DIR"
echo ""

# Create the shared proxy network if it doesn't exist
echo -e "${YELLOW}Creating shared Docker network...${NC}"
docker network create proxy 2>/dev/null || echo "Network 'proxy' already exists"
echo ""

# Start services in order
# 1. Core Infrastructure
start_service "Reverse Proxy (Traefik)" "$BASE_DIR/reverse-proxy"
start_service "Portainer" "$BASE_DIR/portainer"

# 2. Databases (start early as many services depend on them)
start_service "Databases" "$BASE_DIR/databases"

# 3. Security Services
start_service "Security Services" "$BASE_DIR/security"

# 4. Network Services
start_service "Ad Blocker (Pi-hole)" "$BASE_DIR/ad-blocker"
start_service "VPN Server" "$BASE_DIR/vpn-server"

# 5. File & Media Services
start_service "File Server (Nextcloud)" "$BASE_DIR/file-server"
start_service "Media Server" "$BASE_DIR/media-server"
start_service "Photo Management" "$BASE_DIR/photos"

# 6. Download Management
start_service "Download Managers" "$BASE_DIR/downloads"

# 7. Productivity & Documentation
start_service "Productivity Tools" "$BASE_DIR/productivity"
start_service "Password Manager" "$BASE_DIR/password-manager"

# 8. Development Tools
start_service "Development Tools" "$BASE_DIR/development"
start_service "CI/CD Stack" "$BASE_DIR/ci-cd"

# 9. Monitoring & Analytics
start_service "Monitoring Stack" "$BASE_DIR/monitoring"
start_service "Network Tools" "$BASE_DIR/network-tools"
start_service "Analytics" "$BASE_DIR/analytics"

# 10. Communication & Collaboration
start_service "Communication Stack" "$BASE_DIR/communication"

# 11. Home Automation
start_service "Home Automation" "$BASE_DIR/home-automation"

# 12. Web Servers
start_service "Web Servers" "$BASE_DIR/web-server"

# 13. Game Servers
start_service "Game Servers" "$BASE_DIR/game-server"

# 14. Backup Solutions
start_service "Backup Solutions" "$BASE_DIR/backup"

echo ""
echo "========================================="
echo -e "${GREEN}  All services started!${NC}"
echo "========================================="
echo ""
echo "View running containers:"
echo "  docker ps"
echo ""
echo "View logs for a specific service:"
echo "  docker logs <container-name>"
echo ""
echo "Access Portainer to manage containers:"
echo "  https://portainer.your-domain.com"
echo ""
echo "Note: Some services may take a few minutes to fully initialize."
echo ""
