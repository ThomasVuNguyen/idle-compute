# Network Configuration Guide

## Current Issue
Port 7465 is currently bound to localhost only (`127.0.0.1:7465`), which prevents external requestors from connecting to your provider.

## Solution Options

### Option 1: Configure Yagna to bind to all interfaces
```bash
# Stop yagna service
systemctl stop yagna

# Edit yagna configuration to bind to 0.0.0.0
# This requires modifying the yagna service configuration
```

### Option 2: Use SSH tunneling (Temporary)
```bash
# On your local machine, create SSH tunnel
ssh -L 7465:localhost:7465 root@your-server-ip

# This forwards local port 7465 to the server's port 7465
```

### Option 3: Configure router/firewall (Recommended)
1. **Router Configuration**:
   - Forward external port 7465 to internal IP:7465
   - Allow outbound UDP port 11500

2. **Firewall Configuration**:
   ```bash
   # Ubuntu/Debian
   sudo ufw allow 7465/tcp
   sudo ufw allow 11500/udp
   
   # CentOS/RHEL
   sudo firewall-cmd --permanent --add-port=7465/tcp
   sudo firewall-cmd --permanent --add-port=11500/udp
   sudo firewall-cmd --reload
   ```

3. **Test connectivity**:
   ```bash
   # From external machine
   telnet your-server-ip 7465
   ```

## Network Requirements
- **Inbound**: TCP port 7465 (for requestor connections)
- **Outbound**: UDP port 11500 (for network communication)
- **Bandwidth**: Stable broadband connection
- **NAT**: Router must support port forwarding

## Security Considerations
- Only expose necessary ports
- Consider using VPN for additional security
- Monitor connection logs for suspicious activity
- Keep system updated with security patches
