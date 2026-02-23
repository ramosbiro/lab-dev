# 📊 Observability & System Monitoring

This document describes the monitoring strategy used to manage high-density information across the **6-screen array**, ensuring system stability and performance for mission-critical development.

---

## 🖥️ Screen Real Estate Allocation

To maintain a cognitive flow without context-switching fatigue, each monitor has a dedicated purpose within the **i9-13900H** architecture:

### 1. Primary Development (3x Lenovo 27")
* **Central:** Main IDE (VS Code/Cursor) with **VILT Stack** projects.
* **Left:** Real-time terminal multiplexing (**Zsh/Tmux**) and Git logs.
* **Right:** Browser DevTools and application preview.

### 2. System Health (LG 23")
* Dedicated to **btop/htop** for monitoring the 14 cores (20 threads).
* Visualizing **WSL2** memory consumption (`vmmem`) and thermal status.

### 3. Network & Security (Philips 21.5")
* Real-time traffic analysis and firewall logs (**Hardening audit**).
* Documentation sidecar for **NixOS** and Docker API references.

### 4. Mobile/Touch Interface (ROG Nebula 13.4")
* Dedicated to UI/UX touch debugging via the **ROG Flow Z13** native display.

---

## 🛠️ Tooling Stack

* **System Metrics:** `btop` and `glances` for high-level hardware oversight.
* **Container Monitoring:** `ctop` for real-time Docker container metrics.
* **Network Observability:** `nload` and `iftop` to monitor the **700 Mb/s symmetric fiber**.
* **Log Management:** `tail -f` and custom aliases for Laravel and Nginx auditing.

---

## 🌡️ Thermal & Resource Management

Given the high-performance nature of the **ROG Flow Z13**, monitoring is critical:

* **Thermal Audit:** Constant monitoring of delta temperatures between P-cores and E-cores.
* **Performance Profiles:** Automatic switching between *Silence*, *Performance*, and *Turbo* based on Docker build triggers.
* **Storage I/O:** Real-time tracking of the **2TB WD SN740 NVMe** throughput.
