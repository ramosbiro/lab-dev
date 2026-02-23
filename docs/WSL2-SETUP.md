# 🐧 WSL2 & Kernel Optimization

This document details the specialized configuration and tuning applied to the **Windows Subsystem for Linux (WSL2)**. The goal is to maximize the performance of the **13th Gen Intel® Core™ i9-13900H** while maintaining a stable, secure, and high-throughput environment for **Immutable Infrastructure** workflows.

---

## ⚙️ Core Configuration (.wslconfig)

To prevent resource contention between the Windows host and the virtualized Linux environments, a global `.wslconfig` is implemented. This optimizes the 20 threads and 16GB LPDDR5 RAM of the **ROG Flow Z13**.

```ini
[wsl2]
# High-performance allocation for the i9-13900H (14 Cores / 20 Threads)
processors=14
memory=12GB
swap=4GB

# Advanced Networking & I/O
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
```
---

## 🚀 Kernel & System Tuning
The laboratory utilizes a modern kernel tailored for high I/O throughput and container orchestration.

* **Current Kernel:** 6.6.87.2-microsoft-standard-WSL2.
* **Storage Optimization:** Leveraging **VirtioFS** for the **2TB WD PC SN740 NVMe**, ensuring near-native speeds for Docker-based databases and massive project directories.
* **Process Priority:** Utilizing `cgroups` to ensure mission-critical services (Laravel/VILT Stack) receive priority during heavy compilation cycles.

---

## 🐚 Environment & Shell Hardening
Aligned with **PMESP** security standards, the shell environment is hardened for defensive and development operations:

* **Zsh Orchestration:** Powering the terminal with **Oh My Zsh**, focused on real-time observability (Git status, CPU load, and Docker context).
* **SSH Persistence:** Configured with `ssh-agent` for **Ed25519** key management, ensuring secure, encrypted access to remote infrastructure.
* **Dotfiles Synchronization:** Managed through the `/dotfiles` directory for atomic deployments and consistent environments across different distributions.

---

## 📺 Multi-Display Observability
Integration with the **6-monitor array** is handled via specialized terminal multiplexing to manage high-density information:

* **Tmux 3.4:** Used to manage persistent sessions and complex layouts across multiple screens.
* **Window Management:** Synchronized panes for real-time log tailing and system monitoring (btop/htop) on dedicated observability displays.

---

## 🛡️ Resilience & Disaster Recovery
* **Snapshot Strategy:** Periodic exports of the WSL2 distribution (.tar) to cold storage for instant recovery.
* **NixOS Integration:** Declarative package management ensures that the userland environment is 100% reproducible and can be rebuilt in minutes.

