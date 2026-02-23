# 🤖 GitHub Copilot Custom Instructions

These instructions ensure that AI-generated code and suggestions align with the high-performance and security-first standards of the **Immutable Infrastructure Lab**.

---

## 🏗️ Technical Context & Tech Stack

Copilot must prioritize suggestions compatible with:
* **Backend:** PHP 8.x (Laravel Framework) utilizing the VILT Stack (Vue, Inertia, Laravel, Tailwind).
* **Infrastructure:** NixOS (Declarative/Immutable) and Docker (Rootless orchestration).
* **Environment:** WSL2 (Ubuntu 24.04 LTS) on an **i9-13900H** hybrid architecture.
* **Standards:** PSR-12, institutional security protocols (PMESP), and Zero-Trust principles.

---

## 🛠️ Code Quality Guidelines

* **Seniority Level:** Provide concise, production-ready code. Avoid verbose explanations for standard patterns.
* **Performance:** Favor code that is optimized for high-throughput and low-latency, considering the **2TB NVMe** storage environment.
* **Safety:** Always prefer **Ed25519** for SSH logic and **AES-256** for encryption-related snippets.
* **Immutability:** When suggesting system scripts, favor declarative approaches (Nix) over imperative shell commands.

---

## 🛡️ Security Restrictions

* **No Hardcoding:** Never suggest hardcoded credentials, API keys, or institutional IPs.
* **Least Privilege:** Default to non-root user configurations in Dockerfiles and systemd services.
* **Validation:** Ensure all input handling includes strict validation and sanitization, especially for institutional systems.

---

## 💬 Interaction Style

* **Conciseness:** Be direct and technical. 
* **Accuracy:** If a solution involves legacy protocols (RSA, PHP 7.x), warn the user and suggest modern alternatives (Ed25519, PHP 8.x).
* **Context Awareness:** Assume the developer is an expert SysAdmin and Senior Developer with 20+ years of experience.
