# 🐳 Containerization & Service Orchestration

This document defines the container architecture and orchestration standards used to maintain consistent, isolated, and "Cloud Ready" environments within this laboratory.

## 🛠️ Toolchain & Engine

The infrastructure relies on the **Docker Engine** integrated with the **WSL2 (Ubuntu 24.04 LTS)** backend to ensure high I/O throughput and native Linux performance.

* **Runtime:** Docker Engine v27.x+ 
* **Orchestration:** Docker Compose v2.x (Standardized for multi-container stacks).
* **Base Images:** Strict use of official, verified, and slim/alpine images to reduce attack surface and resource footprint.

## 🏗️ Architecture: VILT Stack Orchestration

Most projects in this lab follow the **VILT Stack** (Vue, Inertia, Laravel, Tailwind) architecture, orchestrated as follows:

1.  **Application Layer:** PHP 8.3-fpm (isolated with specific extensions for Laravel).
2.  **Web Server Layer:** Nginx acting as a high-performance Reverse Proxy.
3.  **Data Layer:** MySQL 8.0 or MariaDB, utilizing persistent Docker Volumes for data integrity.
4.  **Caching & Queue:** Redis for session management and rapid job processing.

## 🔒 Security & Hardening (Best Practices)

Drawing from mission-critical infrastructure standards, every container follows these security constraints:

* **Least Privilege:** Processes are configured to run as non-root users within the container whenever possible.
* **Network Isolation:** Use of custom Docker bridge networks to isolate the database tier from the public-facing web server.
* **Environment Management:** Sensitive data is never hardcoded in images; all configurations are managed via version-controlled `.env.example` templates and secure runtime environment variables.
* **Resource Limits:** Defined CPU and Memory constraints in `docker-compose.yml` to prevent resource contention on the **ROG Flow Z13** host.

## 🚀 Deployment Workflow

To spin up a development environment, the lab utilizes a standardized command structure:

```bash
# Optimized start with build validation
docker compose up -d --build
