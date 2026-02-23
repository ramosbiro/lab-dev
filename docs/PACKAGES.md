# 📦 Packages & Dependencies Index

This document serves as the central registry for all software packages and dependencies managed within the **WSL2** environment. These lists are automatically updated to ensure environment parity and rapid recovery across the **WD SN740 2TB NVMe**.

---

## 📂 Managed Package Lists

Below are the direct links to the raw dependency files generated from the lab environment.

* **System Packages (APT):** [`docs/packages-apt.txt`](./packages-apt.txt)
* **Node.js Modules (NPM):** [`docs/packages-npm.txt`](./packages-npm.txt)
* **Python Libraries (PIP):** [`docs/packages-pip.txt`](./packages-pip.txt)
* **Python Apps (Pipx):** Detailed in the Python section of [STACK.md](./STACK.md)

---

## 🛠️ Maintenance Commands

To refresh these lists and maintain storage efficiency on the **i9-13900H** architecture, use the following audit commands:

### 1. Generate APT Inventory
```bash
# Exports all manually installed system packages
apt-mark showmanual > docs/packages-apt.txt
```

### 2. Export Global Node.js Packages
```bash
# Lists global NPM modules without the dependency tree
npm list -g --depth=0 > docs/packages-npm.txt
```

### 3. Python Environment Audit
```bash
# Freezes the current PIP environment for reproducibility
pip freeze > docs/packages-pip.txt
```
---

## 🛡️ Dependency Integrity

* Audit Schedule: Weekly checks for outdated packages via npm outdated and pip list --outdated.

* Security Scanning: Automated scanning of dependency lists for known vulnerabilities using institutional security standards.

* Storage Optimization: Regular execution of apt autoremove and npm cache clean to maintain peak performance on the ROG Flow Z13.
