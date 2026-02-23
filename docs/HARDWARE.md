# 🖥️ Full Hardware Specification: Performance & Observability

This document provides the exhaustive technical specifications of the infrastructure powering the **Immutable Infrastructure Lab**. It details the main computing unit, high-density visualization array, and specialized peripherals.

---

## 🧠 Main Computing Unit: ASUS ROG Flow Z13 (2022)

The system is centered around a high-performance hybrid workstation (GZ301ZE) optimized for extreme multitasking and I/O throughput.

### ⚙️ Core Processing & Graphics
| Component | Detailed Specification |
| :--- | :--- |
| **Model** | ROG Flow Z13 (2022) GZ301ZE (Motherboard: ASUSTeK GZ301ZE) |
| **CPU** | 13th Gen Intel® Core™ i9-13900H (Alder Lake - 10nm) |
| **Cores/Threads** | 14 Cores (6 P-cores + 8 E-cores) | 20 Threads |
| **Clock/Cache** | 2.6 GHz Base / Up to 5.4 GHz Turbo | 24M Cache |
| **TDP** | 45W | Socket 1744 FCBGA |
| **Discrete GPU** | NVIDIA® GeForce RTX™ 3050 Ti Laptop (4GB GDDR6 128-bit) |
| **GPU Boost** | ROG Boost: 1085MHz* at 40W (1035MHz + 50MHz OC) | 35W+5W Dynamic |
| **Integrated GPU** | Intel® Iris® Xe Graphics (Alder Lake GT2) |
| **RAM** | 16 GB LPDDR5 (Samsung) |
| **Main SSD** | 2TB WD PC SN740 PCIe® 4.0 NVMe™ M.2 (2230) |

### 📺 Integrated Display & Multimedia
* **Panel:** 13.4-inch ROG Nebula Display (UHD+ 16:10 | 3840 x 2400)
* **Features:** 120Hz Refresh Rate, 30ms Response, Pantone Validated, Adaptive-Sync.
* **Touch:** 10-point Multi-touch with Asus Pen 2.0 (SA203H) support.
* **Cameras:** 13MP Rear Camera + 5MP Infrared (IR) Front Camera (720P HD).
* **Audio:** 2-speaker system with Smart Amp, Dolby Atmos®, Hi-Res Certification, and 3-microphone array with AI Noise-canceling.

### 🔋 Power & Thermal Management
* **Battery:** 4-cell Li-ion (56WHrs) | Design Capacity: 56,002 mWh | Health: ~80.6%.
* **Charging:** 100W USB-C AC Adapter (A20-100P1A) | Output: 20V DC, 5A.
* **Cooling:** Vapor Chamber, Liquid Metal (CPU/GPU), 0.15mm Ultra-thin fins, 0dB Ambient Cooling.
* **BIOS:** GZ301ZE.321 (04/17/2025).

---

## 📺 External Observability Array (6 Screens Total)

Configured for **High-Density Observability**, allowing simultaneous tracking of kernel metrics, transaction logs, and IDE instances.

| Quantity | Model | Specification |
| :--- | :--- | :--- |
| 3x | **Lenovo ThinkVision 27"** | T27i-30 (FHD 1920x1080 @ 60Hz) |
| 1x | **LG Flatron E2360 LED** | 23" Widescreen (1920x1080 @ 60Hz) |
| 1x | **Philips 226VL** | 21.5" Widescreen (1920x1080 @ 60Hz) |
| 1x | **Integrated ROG Nebula** | 13.4" UHD+ (3840 x 2400 @ 120Hz) |

---

## 🌐 I/O Ports & Connectivity

* **Thunderbolt™ 4:** Support for DisplayPort™ / Power Delivery (Up to 40Gbps).
* **USB-C Gen 2:** 2x Type-C (DisplayPort™ / Power Delivery / G-SYNC) @ 10Gbps.
* **XG Mobile Interface:** Dedicated port for ROG external GPU and I/O expansion.
* **USB-A:** 1x USB 2.0 (480Mbps).
* **Storage Interfaces:** microSD Card Reader (UHS-II) + 3.5mm Audio Combo.
* **Wireless:** Wi-Fi 6E (802.11ax) Triple Band + Bluetooth® 5.2.

---

## ⌨️ Peripherals & External Storage

### Input Devices
* **External Keyboard:** Redragon ASHE PRO K626P-KBS (Otemu Red Switches).
* **Mouse:** Redragon Prediction Pro Wireless M901P-KS.
* **Controller:** Manba One V2 (Hall Effect Sticks/Triggers | 2" RGB Screen | 1800mAh).
* **Audio:** ROG Cetra True Wireless.

### Docks & Expansion
* **Dock 1:** MSL FORCE USB-C Hub (10G) + NVMe Enclosure (LAN, HDMI, DP, USB 3.1).
* **Dock 2:** Knup KP-T107 (4x USB 3.0).
* **External Drives:** 3x 1TB SSDs (Realtek RTL9210 NVMe) + 2x 1TB SDXC Cards.

---

## 💻 Operating Systems & Network

* **Main Host:** Windows 11 Pro (25H2 | Build 26220.7752).
* **Linux Environment:** WSL2 (Ubuntu 24.04.3 LTS / Debian).
* **Dual-Boot:** Bazzite (Fedora-based) managed via GRUB.
* **Network Throughput:** Vivo Fiber (700 Mb/s Symmetric Download/Upload).
