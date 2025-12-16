# Contributing to Home Server

Thank you for considering contributing to this project! This document provides guidelines for contributing.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the existing issues. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce**
- **Expected vs actual behavior**
- **Environment details** (OS, Docker version, etc.)
- **Logs** if applicable

### Suggesting Enhancements

Enhancement suggestions are welcome! Please include:

- **Clear title and description**
- **Use case** - why this would be useful
- **Proposed solution** if you have one
- **Alternative solutions** you've considered

### Adding New Services

When adding a new service:

1. **Create a new directory** following the naming convention
2. **Include required files**:
   - `docker-compose.yml` - Well-commented service definition
   - `.env.example` - All environment variables with descriptions
   - Additional config files if needed
3. **Follow existing patterns**:
   - Use Traefik labels for routing
   - Connect to `proxy` network for external access
   - Use internal networks for databases
   - Include restart policy
   - Add security options where appropriate
4. **Update documentation**:
   - Add service to README.md
   - Add to SERVICES.md
   - Update start-all.sh script
5. **Test thoroughly**:
   - Service starts successfully
   - Accessible through Traefik
   - Persists data correctly
   - Works after restart

### Pull Request Process

1. **Fork the repository**
2. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes**:
   - Follow existing code style
   - Test thoroughly
   - Update documentation
4. **Commit with clear messages**:
   ```bash
   git commit -m "Add: Brief description of what you added"
   ```
   Use prefixes: Add, Fix, Update, Remove, Docs
5. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```
6. **Create Pull Request**:
   - Describe what you changed and why
   - Reference any related issues
   - Include testing steps

## Style Guidelines

### Docker Compose Files

```yaml
version: '3.8'

# Clear comment about what this service does

services:
  service-name:
    image: service:latest
    container_name: service-name
    restart: unless-stopped
    networks:
      - proxy
    environment:
      - VARIABLE=${VARIABLE}
    volumes:
      - service-data:/data
    labels:
      - "traefik.enable=true"
      # Additional Traefik labels...

networks:
  proxy:
    external: true

volumes:
  service-data:
```

### Environment Files

```bash
# Service Name Configuration
# Copy this file to .env and update with your values

# Domain configuration
DOMAIN=example.com

# Service-specific settings
VARIABLE=value

# Service Access URL:
# Service: https://service.example.com
#
# Additional setup notes...
```

### Documentation

- Use clear, simple language
- Include examples
- Add troubleshooting tips
- Explain WHY not just HOW

## Code of Conduct

### Our Standards

- Be respectful and inclusive
- Welcome newcomers
- Accept constructive criticism
- Focus on what's best for the community
- Show empathy

### Unacceptable Behavior

- Harassment or discrimination
- Trolling or insulting comments
- Personal or political attacks
- Publishing private information
- Spam or advertising

## Questions?

- Open an issue with the `question` label
- Start a discussion in GitHub Discussions
- Check existing documentation first

## Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes
- Git commit history

Thank you for contributing! 🎉

---

**Made by: Ritesh Rana**  
Software Engineer | DevOps | AI & Systems Architecture
