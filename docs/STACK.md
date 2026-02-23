# 🛠️ Technology Stack & Tooling

This document provides a comprehensive inventory of the languages, frameworks, and infrastructure tools powering the **Immutable Infrastructure Lab**. It reflects a production-grade environment optimized for the **ASUS ROG Flow Z13** and **WSL2**.

---

## 💻 System & Shell Architecture

The core environment is built on a high-performance Linux subsystem integrated with Windows 11 Pro.

* **Host OS:** Windows 11 Pro 25H2
* **Distro:** Ubuntu 24.04.3 LTS (Noble Numbat)
* **Kernel:** 6.6.87.2-microsoft-standard-WSL2
* **Shell:** Zsh 5.9 (Oh My Zsh)
* **Multiplexer:** Tmux 3.4

---

## 🚀 Core Development Languages

A polyglot environment supporting mission-critical development and automation, drawing from 20+ years of technical expertise.

| Language | Version | Ecosystem Focus |
| :--- | :--- | :--- |
| **PHP** | 8.x (Laravel) | VILT Stack & Institutional Systems (PMESP) |
| **Node.js** | v18.19.1 | Frontend Hydration & Build Tools |
| **Python** | 3.12.3 | Automation, Scripting & AI |
| **Go** | 1.22.2 | Cloud Native & System Tooling |
| **Rust** | 1.93.0 | High-performance low-level tooling |
| **Java** | OpenJDK 21.0.1 | Enterprise legacy & stability |

---

## 📦 Package & Build Management

Efficient dependency orchestration across multiple runtimes, ensuring performance on the **WD SN740 2TB NVMe**.

```bash
# Node.js Global Toolchain
pnpm: 10.29.1 | yarn: 1.22.22 | typescript: 5.9.3

# Python (Pipx) Ecosystem
poetry: 2.3.2 | ruff: 0.15.0 | ipython: 9.10.0

# System Build Tools
build-essential | cmake | pkg-config | cargo: 1.93.0
```

☁️ DevOps, Cloud & Infrastructure
Enabling rapid cloud orchestration and container security for complex development cycles.

Orchestration: Docker 29.1.5 | Docker Compose v5.0.1

IaC: Terraform 1.14.4 | Ansible Core 2.16.3

Kubernetes: Kubectl 1.34.1 | Helm v3.20.0

Cloud CLI: Google Cloud SDK 555.0 | AWS CLI 2.33.1 | Azure CLI 2.83.0

🛠️ CLI Utilities (Power User Workflow)
Optimized tools for real-time observability across the 6-monitor array.

```bash
# Search & Navigation
fzf (0.44.1) | ripgrep (14.1.0) | tree | jq

# Visualization & Performance
htop | bat (batcat) | neofetch | curl | unzip
```

✍️ Editor & Version Control
IDE: VS Code (Remote-WSL Integration)

SCM: Git 2.43.0

Remote Access: OpenSSH 9.6p1 (Ed25519)
