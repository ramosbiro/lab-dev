# 🐳 Docker & Container Strategy

This document details the containerization strategy and orchestration standards used within the **Immutable Infrastructure Lab**. The focus is on environment parity, resource optimization for the **ROG Flow Z13**, and the rapid deployment of high-performance **Full Stack (Laravel/VILT)** applications.

## 🏗️ Architectural Overview

I utilize a **modular orchestration model** where each project is decoupled into micro-services, ensuring that the development environment closely mimics a production-ready cloud architecture.

* **Engine:** Docker Engine v27.x running on **WSL2 (Ubuntu 24.04 LTS)**.
* **Orchestration:** Docker Compose v2.x utilizing YAML v3.8+ specifications.
* **VFS & I/O:** Optimized file system access between Windows and Linux via the 9P protocol and VirtioFS for maximum I/O throughput.

## 📦 Service Stack (VILT Standards)

Every project is standardized around the following containerized services to ensure consistency across the 20+ years of legacy and modern projects I manage:

| Service | Image Basis | Role |
| :--- | :--- | :--- |
| **App** | PHP 8.3-FPM (Alpine) | Core logic, optimized with JIT and necessary extensions (BCMath, GD, etc). |
| **Web** | Nginx (Mainline) | High-performance reverse proxy and static asset delivery. |
| **Database** | MySQL 8.0 / MariaDB | Relational data storage with persistent volume mounting. |
| **Cache** | Redis (Alpine) | Session storage, caching, and real-time job queuing. |
| **Node** | Node 20+ (LTS) | Asset compilation (Vite) and frontend hydration (Vue.js). |

## 🛡️ Hardening & Isolation

As a **Security Specialist**, my container strategy incorporates multiple layers of defense:

* **Network Bridging:** Each project resides in its own isolated Docker bridge network to prevent lateral movement between disparate development environments.
* **Stateless Design:** Containers are treated as ephemeral. All persistent data (database files, logs, uploads) are mapped to external **Docker Volumes** or the host filesystem.
* **Rootless Operation:** Services are configured to run under a dedicated UID/GID to mitigate the risk of host-level privilege escalation.

🚀 Workflow Commands
Standardized aliases and commands for rapid laboratory management and CI/CD consistency:

1. Project Initialization

# Clean start with force-build and orphan removal
# Ensures no stale configuration persists between sessions
docker compose up -d --build --remove-orphans

2. Observability & Runtime Audit

# Real-time health and resource audit
# Essential for monitoring resource contention on the 6-monitor array
docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}"

3. Infrastructure Maintenance

# Pruning unused resources to maintain SN740 2TB SSD efficiency
docker system prune -f --volumes

## ⚡ Performance Tuning for ROG Flow Z13

Given the **i9-13900H**'s hybrid core architecture, I apply resource constraints to prevent container sprawl from impacting host performance:

```yaml
services:
  app:
    deploy:
      resources:
        limits:
          cpus: '4.0'
          memory: 2G

