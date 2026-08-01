# Homelab-01

A personal DevOps and Cloud Engineering homelab built from scratch to gain hands-on experience with Linux administration, Docker, Azure, Infrastructure as Code, and Kubernetes.

The project follows real-world engineering practices, where every new feature is implemented, tested, documented, and committed to Git.

---

# Project Goals

This homelab is designed to develop practical experience in:

* Linux Administration
* Networking & Troubleshooting
* Bash Automation
* Nginx
* Docker & Docker Compose
* Monitoring & Logging
* Azure Cloud
* Terraform
* Kubernetes (AKS)
* CI/CD

---

# Hardware

| Component | Specification                 |
| --------- | ----------------------------- |
| Machine   | Lenovo ThinkCentre M710q Tiny |
| CPU       | Intel Core i3-7100T           |
| Memory    | 8 GB RAM                      |
| Storage   | 128 GB NVMe SSD               |
| OS        | Ubuntu Server                 |

---

# Current Architecture

```text
Windows Workstation
        │
        │ SSH / Tailscale
        │
        ▼
Ubuntu Server
        │
        ├── Bash Automation
        ├── Nginx
        ├── Docker Engine
        ├── Docker Compose
        ├── PostgreSQL
        ├── Redis
        └── Healthcheck Scripts
```

---

# Repository Structure

```text
homelab-01/

├── docker/
├── nginx/
├── scripts/
├── docs/
├── logs/
├── backup/
├── README.md
└── .gitignore
```

---

# Progress

## Phase 1 — Linux Foundation ✅

* Ubuntu Server installation
* SSH administration
* User and group management
* Linux permissions
* Filesystem
* Package management
* Systemd services
* Process management

---

## Phase 2 — Networking ✅

* IP addressing
* DNS
* Gateway
* Port diagnostics
* curl
* ss
* Network troubleshooting

---

## Phase 3 — Nginx ✅

* Installation
* Configuration
* Backup before changes
* Reload vs Restart
* Log analysis
* Configuration troubleshooting

---

## Phase 4 — Bash Automation ✅

* Healthcheck script
* Functions
* Resource monitoring
* Service checks
* Logging
* Exit codes

---

## Phase 5 — Docker 🚧

Completed:

* Docker Engine
* Images
* Containers
* Docker Networking
* Docker Compose
* PostgreSQL
* Redis
* Healthchecks

In Progress:

* Reverse Proxy
* Bind Mounts
* Multi-container architecture

---

# Engineering Principles

This project follows several engineering principles throughout every implementation:

* Backup → Change → Test → Verify
* Troubleshooting before restarting services
* Infrastructure as Code
* Small, focused Git commits
* Configuration stored in Git
* Automation over manual work

---

# Roadmap

* Reverse Proxy
* Monitoring (Prometheus & Grafana)
* GitHub Actions
* Azure Virtual Machines
* Terraform
* Azure Container Registry
* Kubernetes
* Azure Kubernetes Service (AKS)

---

# Learning Purpose

This repository is part of my journey toward becoming a Linux Administrator, DevOps Engineer, and Azure Cloud Engineer through practical, project-based learning rather than isolated tutorials.
