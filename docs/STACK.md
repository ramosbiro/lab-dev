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

A polyglot environment supporting mission-critical development and automation.

| Language | Version | Ecosystem Focus |
| :--- | :--- | :--- |
| **PHP** | 8.x (Laravel) | VILT Stack & Institutional Systems |
| **Node.js** | v18.19.1 | Frontend Hydration & Build Tools |
| **Python** | 3.12.3 | Automation, Scripting & AI |
| **Go** | 1.22.2 | Cloud Native & System Tooling |
| **Rust** | 1.93.0 | High-performance low-level tooling |
| **Java** | OpenJDK 21.0.1 | Enterprise legacy & stability |

---

## 📦 Package & Build Management

Efficient dependency orchestration across multiple runtimes.

```bash
# Node.js Global Toolchain
pnpm: 10.29.1 | yarn: 1.22.22 | typescript: 5.9.3

# Python (Pipx) Ecosystem
poetry: 2.3.2 | ruff: 0.15.0 | ipython: 9.10.0

# System Build Tools
build-essential | cmake | pkg-config | cargo: 1.93.0

# Search & Navigation
fzf (0.44.1) | ripgrep (14.1.0) | tree | jq

# Visualization & Performance
htop | bat (batcat) | neofetch | curl | unzip
