# 📥 Laboratory Installation & Bootstrap

This document provides the step-by-step procedure to replicate this high-performance development environment from scratch, ensuring all software is at the latest 2026 stable releases.

---

## 1. Windows Host Preparation (ROG Flow Z13)

Before initializing the Linux subsystem, ensure the host environment is prepared for high-density multitasking across the **6-monitor array**.

1. **Enable WSL2**: Run PowerShell as Administrator and execute:
   ```powershell
   dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
   ```
2. Update Drivers: Ensure the i9-13900H firmware and WD SN740 2TB drivers are updated via MyASUS.

3. Biometrics: Configure Windows Hello (IR Camera) for secure MFA access.

---

## 2. WSL2 & Distro Deployment
We utilize the latest LTS for stability and long-term support.

1. Install Ubuntu 24.04.x LTS:
 ```powershell
wsl --install -d Ubuntu-24.04
 ```

2. Apply Global Tuning: Create %USERPROFILE%\.wslconfig and paste the configuration from WSL2-SETUP.md.

3. Kernel Update: Ensure the kernel is at the latest Microsoft-standard-WSL2 version (6.6+).

---

## 3. Core Tooling & Shell (The Engine)
As a Linux Specialist, the shell must be optimized for speed and observability.

```bash
# Update system packages to 2026 latest
sudo apt update && sudo apt upgrade -y

# Install Zsh & Oh My Zsh
sudo apt install zsh -y
sh -c "$(curl -fsSL [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"

# Install essential dev-tools
sudo apt install build-essential cmake pkg-config git fzf ripgrep bat jq htop -y
```

---

## 4. Container Engine (Docker 2026)
Installation of the latest Docker Engine for VILT Stack orchestration.

1. Follow the official Docker Engine installation for Ubuntu.

2. Rootless Post-Install: Configure the Docker group to avoid using sudo (Least Privilege Principle).

3. Verify Versions:

```bash
docker --version
docker compose version
```

---

## 5. Development Runtime (PHP/Laravel/Node)
Standardizing the environment for Senior Full Stack development.

PHP 8.x: Install via ondrej/php PPA with necessary extensions for Laravel.

Node.js: Use nvm to manage the latest LTS or Current versions.

Composer: Install the latest global binary for PHP dependency management.

---

🛡️ Final Security Check
SSH: Generate new Ed25519 keys.

BitLocker: Verify that the 2TB NVMe is fully encrypted.

Audit: Run a system-wide update check to ensure zero-day vulnerabilities are patched.
