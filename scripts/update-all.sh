#!/bin/bash

# Home Server - Update All Services Script
# This script pulls the latest images and recreates containers

set -e

echo "========================================="
echo "  Home Server - Updating All Services"
echo "========================================="
echo ""

# Color codes for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to update a service
update_service() {
    local service_name=$1
    local service_path=$2
    
    if [ -d "$service_path" ] && [ -f "$service_path/docker-compose.yml" ]; then
        echo -e "${YELLOW}Updating $service_name...${NC}"
        
        if [ -f "$service_path/.env" ]; then
            cd "$service_path"
            docker compose pull
            docker compose up -d
            echo -e "${GREEN}✓ $service_name updated${NC}"
        else
            echo -e "${RED}✗ $service_name: .env file not found. Skipping.${NC}"
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
echo "This will pull the latest images and recreate containers."
echo "Press Ctrl+C to cancel, or wait 5 seconds to continue..."
sleep 5

# Update all services
update_service "Reverse Proxy (Traefik)" "$BASE_DIR/reverse-proxy"
update_service "Portainer" "$BASE_DIR/portainer"
update_service "Databases" "$BASE_DIR/databases"
update_service "Security Services" "$BASE_DIR/security"
update_service "Ad Blocker (Pi-hole)" "$BASE_DIR/ad-blocker"
update_service "VPN Server" "$BASE_DIR/vpn-server"
update_service "File Server (Nextcloud)" "$BASE_DIR/file-server"
update_service "Media Server" "$BASE_DIR/media-server"
update_service "Photo Management" "$BASE_DIR/photos"
update_service "Download Managers" "$BASE_DIR/downloads"
update_service "Productivity Tools" "$BASE_DIR/productivity"
update_service "Password Manager" "$BASE_DIR/password-manager"
update_service "Development Tools" "$BASE_DIR/development"
update_service "CI/CD Stack" "$BASE_DIR/ci-cd"
update_service "Monitoring Stack" "$BASE_DIR/monitoring"
update_service "Network Tools" "$BASE_DIR/network-tools"
update_service "Analytics" "$BASE_DIR/analytics"
update_service "Communication Stack" "$BASE_DIR/communication"
update_service "Home Automation" "$BASE_DIR/home-automation"
update_service "Web Servers" "$BASE_DIR/web-server"
update_service "Game Servers" "$BASE_DIR/game-server"
update_service "Backup Solutions" "$BASE_DIR/backup"

echo ""
echo "Cleaning up unused images..."
docker image prune -f

echo ""
echo "========================================="
echo -e "${GREEN}  All services updated!${NC}"
echo "========================================="
echo ""
