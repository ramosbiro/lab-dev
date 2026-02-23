# ❄️ NixOS & Immutable System Configuration

This directory houses the declarative configuration for the **Immutable Infrastructure Lab**. By utilizing **Nix Flakes**, the entire system state—from kernel parameters to user-space applications—is version-controlled and reproducible.

---

## 🏛️ Repository Structure

Following best practices for Nix modularity:

* **[hosts/](./hosts/):** Machine-specific configurations. Includes hardware-level tuning for the **i9-13900H** and the **ROG Flow Z13** display.
* **[modules/](./modules/):** Reusable blocks of configuration (e.g., Docker setup, Networking stacks, Security hardening).
* **[profiles/](./profiles/):** High-level personas for the system (e.g., `workstation`, `server`, `minimal`).

---

## 🚀 Key Features

### 1. Nix Flakes Integration
Enables hermetic builds and pin-point dependency management, ensuring that `nixos-rebuild switch` produces identical results every time.

### 2. Atomic Rollbacks
In case of a configuration failure, the system allows for an instant reversion to a previous stable generation directly from the bootloader.

### 3. Declarative Environment
Everything is defined in `.nix` files, eliminating the "it works on my machine" problem and ensuring total environment parity.

---

## 🛠️ Management Commands

Run these commands from the root of the laboratory to apply changes:

### 1. Apply System Configuration
```bash
sudo nixos-rebuild switch --flake .#default
```

---

## 2. Update Flake Inputs
```bash
nix flake update
```

---

## 3. Garbage Collection
```bash
nix-collect-garbage -d
```

---

🛡️ Security & Institutional Compliance

* All system configurations are audited against PMESP security standards, ensuring that kernel hardening and network policies are enforced at the OS level.



