# 🛡️ Defensive Security & System Hardening

This document details the defensive architecture and hardening protocols implemented across this infrastructure. Drawing from **20+ years of IT expertise** and extensive experience in **mission-critical environments** within the **São Paulo State Military Police (PMESP)**, these measures ensure a resilient, secure, and high-performance development ecosystem.

---

## 🐧 1. Operating System Hardening (NixOS & WSL2)

As a **Linux Specialist**, I implement a declarative security model to mitigate OS-level vulnerabilities:

* **Minimal Surface Area:** Leveraging **NixOS** to enforce a "minimal by design" policy, ensuring only strictly required services are present.
* **Immutable Core:** Utilizing the **Nix Store's immutability** to prevent unauthorized persistent changes to system binaries.
* **Kernel Hardening:** Applying optimized `sysctl` parameters to strengthen the network stack within the **WSL2** subsystem.

---

## 🐳 2. Container & Service Security (Docker)

Security is baked into the orchestration of all **Full Stack (Laravel/VILT)** projects:

* **Non-Root Execution:** Strictly enforcing the **Least Privilege Principle** by configuring containers to run as non-root users.
* **Network Segmentation:** Utilizing isolated Docker bridge networks to decouple application, database, and caching tiers.
* **Supply Chain Security:** Continuous scanning of base images for known **CVEs** and utilizing signed/verified images.

---

## 🌐 3. Network Defense & Infrastructure

Given the **700 Mb/s symmetric fiber** throughput, robust traffic control is implemented:

* **Traffic Orchestration:** Strict firewall rulesets (Host and WSL2 level) to audit all inbound and outbound communication.
* **Secure Remote Access:** Mandatory use of **Ed25519 SSH keys** and encrypted VPN tunnels for infrastructure management.
* **Real-time Observability:** Monitoring of authentication logs across the **6-screen observability array**.

---

## 💻 4. Hardware-Level Security (ROG Flow Z13)

* **Multi-Factor Authentication (MFA):** Utilizing the integrated **Infrared (IR) Camera** and Windows Hello for biometric access.
* **Data-at-Rest Encryption:** Implementation of **AES-256 BitLocker** on the **2TB WD SN740 NVMe** to protect source code and assets.

---

## 🚀 5. Defensive DevOps Workflow

* **Automated Auditing:** Integration of **GitHub Actions** for static analysis and security audits of **Nix Flakes**.
* **Zero-Trust Secret Management:** Strict enforcement of `.env` patterns; sensitive credentials are never committed to version control.
