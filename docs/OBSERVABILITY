# 📊 Observability & System Monitoring

This document describes the monitoring strategy used to manage high-density information across the **6-screen array**, ensuring system stability and performance for mission-critical development.

## 🖥️ Screen Real Estate Allocation

To maintain a cognitive flow without context-switching fatigue, each monitor has a dedicated purpose:

1. **Primary Development (3x Lenovo 27"):**
   - **Central:** Main IDE (VS Code/Cursor) with VILT Stack projects.
   - **Left:** Real-time terminal multiplexing (Zsh/Tmux) and Git logs.
   - **Right:** Browser DevTools and application preview.

2. **System Health (LG 23"):**
   - Dedicated to **btop/htop** for monitoring the 14 cores (20 threads) of the i9-13900H.
   - Visualizing WSL2 memory consumption (vmmem) and thermal throttling.

3. **Network & Security (Philips 21.5"):**
   - Real-time traffic analysis and firewall logs (Hardening audit).
   - Documentation sidecar for NixOS and Docker API references.

4. **Mobile/Touch Interface (ROG Nebula 13.4"):**
   - Dedicated to UI/UX touch debugging and mobile viewport testing.

## 🛠️ Tooling Stack

- **System Metrics:** `btop` and `glances` for high-level hardware oversight.
- **Container Monitoring:** `ctop` for real-time Docker container metrics.
- **Network Observability:** `nload` and `iftop` to monitor the 700 Mb/s symmetric fiber throughput.
- **Logs:** `tail -f` and custom aliases for rapid inspection of Laravel and Nginx logs.

## 🌡️ Thermal & Resource Management

Given the high-performance nature of the **ROG Flow Z13**, monitoring thermal energy is critical:
- **Liquid Metal Cooling:** Constant monitoring of delta temperatures between P-cores and E-cores.
- **Profiles:** Automatic switching via scripts between *Silence*, *Performance*, and *Turbo* based on Docker build triggers.
