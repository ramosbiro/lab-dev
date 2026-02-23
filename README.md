## 🛠️ Lab & Infrastructure

<div align="center">
  <img src="11.jpeg" width="45%" />
  <img src="22.jpeg" width="45%" />
</div>

* **Hardware:** ASUS ROG Flow Z13
* **Environment:** Multi-monitor array (6 screens) for high-density monitoring.
* **Operating Systems:** Linux Specialist (Bazzite, NixOS, Arch, RHEL, Debian).
* **Core Focus:** Senior Full Stack Development & Infrastructure Engineering.

## 🚀 Technical Implementation & Advanced Architecture

This laboratory is the realization of an **Infrastructure as Code (IaC)** ecosystem, engineered to support complex software lifecycles with maximum reliability and security.

### 1. Immutable Core & Determinism (NixOS & Flakes)
Unlike mutable installations that degrade over time, this setup leverages **Nix Flakes** to ensure the environment remains identical across any hardware.
* **Declarative Management:** The entire system state—packages, network configurations, and services—is defined in version-controlled `.nix` files.
* **Atomic Rollbacks:** Zero-downtime guarantee on configuration failures; the architecture allows instant reversion to previous stable generations.
* **Dependency Isolation:** Utilization of `nix-shell` to maintain project-specific libraries (e.g., PHP/Laravel stack) isolated from the global system.

### 2. Orchestration & Virtualization (WSL2 + Docker)
Optimization of the virtualization layer for high-performance Full Stack development:
* **Network Bridging & I/O:** Fine-tuning of the WSL2 network subsystem for low-latency local services and optimized filesystem access via `/mnt/wsl`.
* **Containerization (VILT Stack):** Orchestration via Docker Compose to isolate execution environments (PHP 8.x, Redis, MySQL/MariaDB), ensuring the application is "Cloud Ready" from the first commit.

### 3. Defense in Depth & Hardening
As a SysAdmin and security-focused professional, defense is integrated into the environment's design:
* **Least Privilege Principle:** Implementation of execution policies that restrict root access both on the host and within containers.
* **Change Auditing:** Integration with **GitHub Actions** to validate the integrity of configuration files and documentation upon every change.
* **Network Hardening:** Firewall configuration and traffic control to mitigate vulnerabilities during pre-production stages.

### 4. Performance Engineering (ASUS ROG Flow Z13)
Synergy between high-end hardware and software for extreme multitasking:
* **High-Density Observability:** Setup optimized for simultaneous visualization across 6 screens, allowing real-time monitoring of kernel metrics, transaction logs, and productivity dashboards.
* **Memory Management:** Dynamic resource limitation of `vmmem` to prevent memory contention during intensive use of IDEs and multiple Docker instances.
