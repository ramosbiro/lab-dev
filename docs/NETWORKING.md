# 🌐 Network Engineering & Infrastructure

This document details the network architecture and connectivity protocols implemented in the **Immutable Infrastructure Lab**. It focuses on maximizing throughput, ensuring low latency, and maintaining secure communication between the host, WSL2, and external environments.

---

## 🛰️ 1. Physical Infrastructure & Topology

The network is designed to sustain high-performance DevOps cycles and real-time monitoring:

* **Primary ISP:** Vivo Fiber (Symmetric **700 Mb/s** Download/Upload).
* **Hardware Interface:** Wi-Fi 6E (802.11ax) Triple Band + Gigabit Ethernet via MSL FORCE Docking Station.
* **Backbone:** High-speed I/O via **Thunderbolt™ 4 (40Gbps)** to manage multi-monitor data streams across the **6-screen array**.

---

## 🐳 2. Virtual Networking (WSL2 & Docker)

Optimization of the bridge between Windows 11 Pro and the Linux subsystem:

* **Network Bridging:** Tuned **WSL2** networking for low-latency communication for **Laravel/VILT Stack** services.
* **Container Orchestration:** Docker-specific networks (Bridge/Overlay) to isolate microservices (PHP, MySQL, Redis).
* **DNS & Resolution:** Custom DNS configuration within **NixOS** and WSL2 to accelerate `nixos-rebuild` operations.

---

## 🛡️ 3. Protocols & Management

Implementation of industry-standard protocols for infrastructure management, drawing from **PMESP** standards:

* **Secure Access:** SSH (OpenSSH) using **Ed25519 keys** for all remote server administration.
* **VPN & Tunneling:** Encrypted tunnels for secure access to mission-critical databases and external cloud environments.
* **Traffic Monitoring:** Real-time observability using `nload`, `iftop`, and `tcpdump` to audit traffic patterns.

---

## 💻 4. Hardware-Software Synergy

The **ROG Flow Z13** serves as the central node for all network operations:

* **Bandwidth Management:** Prioritization of development traffic (Git, Docker Hub, Packagist) over system updates.
* **Port Forwarding:** Controlled exposure of local environments for external testing (Mobile/Touch debugging via the **ROG Nebula display**).
