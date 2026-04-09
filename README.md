# 🔐 Cybersecurity-Phase1 — Hands-On Learning Portfolio

> Documenting my progression from foundational concepts to applied cybersecurity skills through structured labs, scripting, and real-world simulations.

---

## 📁 Repository Structure

```
Cybersecurity-Phase1/
├── scripts/          # Python and Bash automation tools built during labs
├── reports/          # Network audits, threat reports, and lab write-ups
├── labs/             # Supporting lab files and configurations
└── README.md
```

---

## 🛠️ Labs & Scripts Completed

| Lab / Script | What It Does | Key Concept |
|---|---|---|
| `brute_detector.py` | Parses auth logs to extract Failed SSH login attempts | Log analysis, brute-force detection |
| `incident_response.py` | Greps auth logs, extracts unique attacker IPs, exports JSON threat report | Incident response automation, subprocess |
| `system_auditor.py` | Scans running processes for unauthorized cryptominer, generates security alert | Process auditing, threat detection |
| `port_check.py` | Socket-based port scanner checking SSH (22) across target IPs | Network reconnaissance, TCP sockets |
| `harden.sh` | Bash hardening script restoring Gold Standard file permissions (600/640) | Linux permissions, system hardening |
| `docker-compose.yml` | Air-gapped containerized security stack deployment | Docker, network isolation |
| `subnet_blueprint.txt` | CIDR subnet design for Operation Grid Lock | Subnetting, network segmentation |
| `network_audit.txt` | Layer 1–3 connectivity audit and gateway validation | OSI model, network troubleshooting |
| `protocol_audit.txt` | Protocol-level analysis including DNS hijacking and deception layers | DNS security, attack surface analysis |

---

## 🧠 Core Concepts Covered

- **CIA Triad** — Confidentiality, Integrity, Availability
- **AAA Framework** — Authentication, Authorization, Accounting
- **Network Fundamentals** — OSI layers, subnetting, CIDR, default gateway
- **Linux Security** — File permissions (chmod/chown), /etc/shadow hardening
- **Threat Detection** — Brute-force pattern recognition, log parsing, IP extraction
- **Incident Response** — Automated hunt scripts, structured JSON alert generation
- **Containerization** — Docker Compose for isolated security environments

---

## 🚀 Tools & Technologies

| Tool | Used For |
|---|---|
| Python 3 | Automation scripts, log parsing, threat reporting |
| Bash | System hardening, permission management |
| Docker / Docker Compose | Air-gapped lab environment deployment |
| Linux CLI | System auditing, file management, process inspection |
| Nmap / Socket | Port scanning and network reconnaissance |
| JSON | Structured threat alert output |

---

## 📈 Progress Tracker

- [x] Week 1 — Foundational concepts, CIA Triad, AAA Framework
- [x] Week 2 — Network fundamentals, subnetting, CIDR
- [x] Week 3 — Python automation: port checker, brute-force detector, system auditor
- [x] Week 4 — Incident response scripting, Docker stack deployment, sandbox analysis
- [ ] Week 5+ — Wireshark analysis, Nmap scanning, vulnerability assessment

---

## 🤝 Connect

Open to feedback, collaboration, and learning opportunities. This repository is a living record of my growth — updated weekly as I progress through the program.
