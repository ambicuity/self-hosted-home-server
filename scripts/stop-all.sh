#!/bin/bash

# Home Server - Stop All Services Script
# This script stops all Docker Compose services

set -e

echo "========================================="
echo "  Home Server - Stopping All Services"
echo "========================================="
echo ""

# Color codes for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to stop a service
stop_service() {
    local service_name=$1
    local service_path=$2
    
    if [ -d "$service_path" ] && [ -f "$service_path/docker-compose.yml" ]; then
        echo -e "${YELLOW}Stopping $service_name...${NC}"
        cd "$service_path"
        docker compose down
        echo -e "${GREEN}✓ $service_name stopped${NC}"
        echo ""
    fi
}

# Get the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"

cd "$BASE_DIR"

echo "Base directory: $BASE_DIR"
echo ""

# Stop all services
stop_service "Backup Solutions" "$BASE_DIR/backup"
stop_service "Game Servers" "$BASE_DIR/game-server"
stop_service "Web Servers" "$BASE_DIR/web-server"
stop_service "Home Automation" "$BASE_DIR/home-automation"
stop_service "Communication Stack" "$BASE_DIR/communication"
stop_service "Analytics" "$BASE_DIR/analytics"
stop_service "Network Tools" "$BASE_DIR/network-tools"
stop_service "Monitoring Stack" "$BASE_DIR/monitoring"
stop_service "CI/CD Stack" "$BASE_DIR/ci-cd"
stop_service "Development Tools" "$BASE_DIR/development"
stop_service "Password Manager" "$BASE_DIR/password-manager"
stop_service "Productivity Tools" "$BASE_DIR/productivity"
stop_service "Download Managers" "$BASE_DIR/downloads"
stop_service "Photo Management" "$BASE_DIR/photos"
stop_service "Media Server" "$BASE_DIR/media-server"
stop_service "File Server (Nextcloud)" "$BASE_DIR/file-server"
stop_service "VPN Server" "$BASE_DIR/vpn-server"
stop_service "Ad Blocker (Pi-hole)" "$BASE_DIR/ad-blocker"
stop_service "Security Services" "$BASE_DIR/security"
stop_service "Databases" "$BASE_DIR/databases"
stop_service "Portainer" "$BASE_DIR/portainer"
stop_service "Reverse Proxy (Traefik)" "$BASE_DIR/reverse-proxy"

echo ""
echo "========================================="
echo -e "${GREEN}  All services stopped!${NC}"
echo "========================================="
echo ""
