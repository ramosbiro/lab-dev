# ⚙️ Dotfiles & User Configuration

This directory contains the version-controlled configuration files (dotfiles) for my development environment. These settings are engineered to ensure cross-shell consistency, security, and high-performance workflows on the **i9-13900H** workstation.

---

## 📂 Structure & Components

The configuration is modularized to allow selective deployment and easier auditing:

* **[git/](./git/):** Advanced Git orchestration, including global aliases and **GPG signing** configurations for **PMESP** standards.
* **[shell/](./shell/):** Zsh environment powered by **Oh My Zsh**, optimized for high-density terminal usage across 6 monitors.
* **[editor/](./editor/):** (Pending) Configuration for VS Code/Cursor tailored for the **VILT Stack**.
* **[tools/](./tools/):** Specialized configs for CLI utilities like `fzf`, `bat`, and `tmux`.

---

## 🚀 Key Features

### 1. Productivity Aliases
Custom shortcuts for **Docker**, **Laravel**, and **NixOS** to minimize context-switching and accelerate DevOps cycles.

### 2. Security Integration
Global `.gitconfig` enforced with institutional hardening, ensuring every commit is verified and follows the Least Privilege Principle.

### 3. High-Density Observability
Shell configurations optimized for terminal multiplexing, allowing real-time monitoring of system metrics and logs across the multi-monitor array.

---

## 🛠️ Management & Deployment

These files are symlinked to the `$HOME` directory using a declarative approach. 

### To apply changes (manual):
```bash
# Link Zsh config
ln -sf ~/lab-dev/dotfiles/shell/.zshrc ~/.zshrc

# Link Git config
ln -sf ~/lab-dev/dotfiles/git/.gitconfig ~/.gitconfig
