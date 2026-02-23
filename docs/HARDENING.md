# 🛡️ System Hardening & Defensive Security

This document outlines the security protocols and hardening strategies implemented in this laboratory. Drawing from 20+ years of IT experience and mission-critical environments, these measures ensure a resilient development ecosystem.

## 1. Operating System Hardening (NixOS & WSL2)

As a **Linux Specialist**, I apply a declarative security model to mitigate OS-level vulnerabilities:

* **Minimal Surface Area:** Utilizing NixOS to ensure only strictly necessary services are active, reducing the attack surface by design.
* **Immutable Generations:** Leveraging the immutable nature of the Nix store to prevent unauthorized persistent changes to system binaries.
* **Kernel Tuning:** Applying specific `sysctl` parameters to harden the network stack and memory management within the WSL2 environment.

## 2. Container Security (Docker/Compose)

Security is integrated into the orchestration layer for all **Full Stack (Laravel/Vue.js)** projects:

* **Least Privilege Principle:** Containers are configured to run as non-root users whenever possible to prevent container breakout attacks.
* **Image Auditing:** Continuous scanning of base images for known CVEs before deployment in the local development cycle.
* **Network Isolation:** Utilizing dedicated Docker bridges to isolate the application, database, and caching layers, preventing lateral movement.

## 3. Network Defense & Infrastructure

Given the **700 Mb/s symmetric fiber** throughput, robust network control is mandatory:

* **Firewall Orchestration:** Strict inbound/outbound rules to control traffic between the Windows host, WSL2 distros, and the external network.
* **Secure Tunneling:** Use of encrypted VPNs and SSH keys (Ed25519) with passphrase protection for all remote infrastructure management.
* **Audit Logging:** Real-time monitoring of authentication logs and unauthorized access attempts across the 6-screen array.

## 4. Hardware-Level Security (ROG Flow Z13)

* **Biometric Integration:** Utilizing Windows Hello (Infrared Camera) on the **ROG Flow Z13** for secure, multi-factor authentication.
* **Encrypted Storage:** Full-disk encryption (BitLocker) for the primary **2TB WD SN740 NVMe** to protect sensitive data and source code.

## 5. Defensive Workflow

* **GitHub Actions CI:** Automated linting and security checks for configuration files (Dotfiles and Nix Flakes) to prevent the introduction of insecure defaults.
* **Secret Management:** Strict use of `.env` files and secret managers; no credentials or API keys are ever committed to the repository.
