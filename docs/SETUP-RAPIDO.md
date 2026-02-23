# ⚡ Quick Setup Guide (Bootstrap)

This guide details the rapid deployment of my development environment. By leveraging **Infrastructure as Code (IaC)** and declarative configurations, I can transition from a clean install to a fully operational high-performance workstation in minutes.

## 1. Core Operating System (Windows 11 Pro)

1.  **System Update:** Run Windows Update to ensure the latest kernel and security patches (Build 26220+).
2.  **Hardware Optimization:** Install **ASUS Armoury Crate** to manage the i9-13900H power profiles and ROG Flow Z13 thermal thresholds.
3.  **WSL2 Installation:**
    ```powershell
    wsl --install
    wsl --update
    ```

## 2. Linux Environment (WSL2 - Ubuntu/Debian)

Instead of manual configuration, I use a specialized bootstrap script located in `/scripts`:

1.  **Import Distro:**
    ```bash
    wsl --import <DistroName> <InstallLocation> <FileName>.tar
    ```
2.  **System Hardening & Packages:**
    Run the automated setup script to install the core stack (PHP 8.x, Docker, Node.js, and Networking tools).

## 3. NixOS (Immutable Infrastructure)

For my immutable deployments and NixOS-based workflows:

1.  **Clone the Lab Repo:**
    ```bash
    git clone [https://github.com/ramosbiro/lab-dev.git](https://github.com/ramosbiro/lab-dev.git)
    cd lab-dev/nixos
    ```
2.  **Apply Flake Configuration:**
    ```bash
    sudo nixos-rebuild switch --flake .#GZ301ZE
    ```
    *This command applies all system-level configurations, hardware optimizations for the Z13, and security hardening rules defined in this repository.*

## 4. Development Stack (Docker Orchestration)

To spin up the **Laravel (VILT Stack)** environment:

1.  Navigate to the project directory.
2.  Execute the pre-configured compose stack:
    ```bash
    docker compose up -d
    ```
    *This deploys isolated containers for the Application, Database (MySQL/MariaDB), and Caching (Redis) layers.*

## 5. Dotfiles & Personalization

Synchronize the CLI environment, shell aliases, and editor configurations:

```bash
cd ~/lab-dev/dotfiles
./install.sh
