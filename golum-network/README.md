## Getting Started as a Golem Provider

### 1. Check Hardware and OS
- 64-bit Windows or Linux host with recent CPU, plenty of RAM/disk, stable broadband.
- Optional: compatible GPU if you want to sell ML/rendering tasks.
- Ensure firewall/NAT configuration can expose inbound TCP 7465 or use a VPN with port forwarding.

### 2. Prepare Your Wallet
- Use a wallet that supports GLM (e.g., MetaMask or a hardware wallet).
- Hold a small ETH balance for L2 gas fees and secure your seed phrase offline.
- Keep the wallet segregated from general browsing; never store the seed on the provider machine.

### 3. Install the Node Software
- Download the latest provider release from https://www.golem.network/ and install:
  - Windows: run the MSI installer.
  - Linux: install the `.deb` package or use `snap install golem` (depending on your distro).
- Verify the `yagna` service runs after install: `yagna service run` or use the desktop GUI.

### 4. Initialize and Configure
- Connect and authorize your wallet with `yagna`.
- Choose mainnet or testnet; start on testnet or use very low limits until you verify stability.
- Set sandbox/security boundaries so jobs cannot read outside approved directories.

### 5. Tune Provider Profile
- Advertise accurate CPU/GPU/RAM resources and set max concurrent tasks plus data caps.
- Configure price per hour and per-task fee; adjust later based on demand so you stay competitive.
- Automate restarts with systemd or Task Scheduler to keep the node available after reboots.

### 6. Validate Before Going Live
- Run the bundled benchmark workloads to confirm sandboxing, networking, and payouts.
- Monitor `yagna` logs or the desktop UI for task flow, payout confirmations, and errors.
- Adjust pricing/limits if the node stays idle or if workloads overload the machine.

### 7. Operate Securely
- Apply OS and security updates promptly; rotate machine passwords and SSH keys.
- Back up configs and wallet credentials; consider log shipping/alerting (Grafana/Loki, etc.).
- Join the Golem Discord and follow provider announcements for pricing, staking, or payout changes.

### 8. Scale When Ready
- Clone the setup on additional rigs when profitable, specializing nodes for CPU or GPU workloads.
- Script start/stop sequences around power price windows to maximize returns.
- Keep monitoring performance and wallet balances so payouts match your expectations.
