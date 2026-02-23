# 🛡️ Defensive Security & System Hardening

This document details the defensive architecture and hardening protocols implemented across this infrastructure. Drawing from **20+ years of IT expertise** and extensive experience in **mission-critical environments** within the **São Paulo State Military Police (PMESP)**, these measures ensure a resilient, secure, and high-performance development ecosystem.

## 1. Operating System Hardening (NixOS & WSL2)

As a **Linux Specialist**, I implement a declarative security model to mitigate OS-level vulnerabilities at the kernel and userland levels:

* **Minimal Surface Area**: Leveraging **NixOS** to enforce a "minimal by design" policy, ensuring only strictly required services and binaries are present in the system path.
* **Immutable Core**: Utilizing the **Nix Store's immutability** to prevent unauthorized or accidental persistent changes to system-wide configurations and binaries.
* **Kernel Hardening**: Applying optimized `sysctl` parameters to strengthen the network stack and manage resource allocation (CPU/RAM) within the **WSL2** subsystem to prevent DoS-like conditions.

## 2. Container & Service Security (Docker)

Security is baked into the orchestration of all **Full Stack (Laravel/VILT)** projects:

* **Non-Root Execution**: Strictly enforcing the **Least Privilege Principle** by configuring containers to run as non-root users, mitigating potential container breakout risks.
* **Network Segmentation**: Utilizing dedicated, isolated Docker bridge networks to decouple the application, database, and caching tiers, preventing lateral movement within the environment.
* **Supply Chain Security**: Continuous scanning of base images for known **CVEs** and utilizing signed/verified images for development and staging.

## 3. Network Defense & Infrastructure

Given the **700 Mb/s symmetric fiber** throughput, robust traffic control is implemented to maintain integrity:

* **Traffic Orchestration**: Implementation of strict firewall rulesets (Host-level and WSL2-level) to audit and control all inbound and outbound communication.
* **Secure Remote Access**: Mandatory use of **Ed25519 SSH keys** with strong passphrases and encrypted VPN tunnels for all infrastructure management.
* **Real-time Observability**: Monitoring of authentication logs and unauthorized access attempts across the **6-screen observability array**.

## 4. Hardware-Level Security (ROG Flow Z13)

* **Multi-Factor Authentication (MFA)**: Utilizing the integrated **Infrared (IR) Camera** and Windows Hello for biometric-secured access to the workstation.
* **Data-at-Rest Encryption**: Implementation of **AES-256 BitLocker** encryption on the primary **2TB WD SN740 NVMe** to protect proprietary source code and sensitive project assets.

## 5. Defensive DevOps Workflow

* **Automated Auditing**: Integration of **GitHub Actions** for static analysis (linting) and security audits of **Nix Flakes** and **Dotfiles**.
* **Zero-Trust Secret Management**: Strict enforcement of `.env` patterns; sensitive credentials and API keys are never committed to version control, managed instead via secure environment injection.
