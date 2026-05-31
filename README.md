# TKH Innovation Fellowship 2026 — Phase 1 Cybersecurity Portfolio

**Fellow:** Jay Emanuel  
**Cohort:** IF 2026 — Cybersecurity  
**Phase:** Phase 1 | March – May 2026

> This repository contains all lab artifacts produced during Phase 1 of the TKH Innovation Fellowship 2026 Cybersecurity program. Each week folder contains the session artifacts and a notes document reflecting on the concepts covered.

---

## 📁 Repository Structure

```
Cybersecurity-Phase1/
├── week-01/          # Linux Fundamentals & Filesystem Navigation
├── week-02/          # Networking & Protocol Analysis
├── week-03/          # Python Scripting for Security
├── week-04/          # Virtualization & Containers
├── week-05/          # Identity, Access & Active Directory
├── week-06/          # Phase 1 Midterm
├── week-07/          # Reconnaissance & Vulnerability Analysis
├── week-08/          # Exploitation Frameworks
├── week-09/          # Web Application Security
├── week-10/          # Digital Forensics & Incident Response
├── week-11/          # Active Defense: Firewalls, IDS & EDR
├── week-12/          # Phase 1 Final Reckoning
└── README.md
```

---

## 📅 Weekly Breakdown

---

### Week 01 — Linux Terminal Control
`3/9 – 3/13` &nbsp;|&nbsp; **Terminal Supremacy: The Command Line as a Secure Navigation Tool**

| Session | Theme | Artifact |
|---------|-------|----------|
| S01 | The Shell Awakening — FHS navigation, command anatomy, scavenger hunt | *(exploration)* |
| S02 | The Permissions Gauntlet — RWX matrix, octal/symbolic notation, /etc/shadow | `harden.sh` |
| S03 | Stream Editing & Piping — grep, sed, awk, log analysis | `discovery.txt` |
| TLAB | Cumulative threat recon mission | `final_threat_report.txt`, `threat_ips.txt`, `collection_log.txt`, `escalation_path.txt` |

| File | Description |
|------|-------------|
| `discovery.txt` | Stream editing lab — top IPs extracted from a 10,000-line Apache log |
| `harden.sh` | Bash script restoring Gold Standard file permissions (600/640) |
| `threat_ips.txt` | Identified threat IP addresses from recon phase |
| `final_threat_report.txt` | Consolidated threat summary from Week 1 findings |
| `collection_log.txt` | Log of artifacts collected during recon |
| `escalation_path.txt` | Privilege escalation path analysis |

---

### Week 02 — Network Operations
`3/16 – 3/20` &nbsp;|&nbsp; **Restoring, Subnetting, and Interrogating the Network**

| Session | Theme | Artifact |
|---------|-------|----------|
| S04 | The Wire (L1–L3) — interface restoration, default gateway rebuild | `network_audit.txt` |
| S05 | The Subnetting Crucible — CIDR, binary surgery, Operation Grid Lock | `subnet_blueprint.txt` |
| S06 | Protocol Interrogation — DNS deception, port discovery, hidden services | `protocol_audit.txt` |
| TLAB | Operation Silent Ghost — cumulative IR mission across all three sessions | `tlab_report.txt` |

| File | Description |
|------|-------------|
| `network_audit.txt` | Layer 1–3 connectivity audit and default gateway restoration |
| `subnet_blueprint.txt` | CIDR subnet design for Operation Grid Lock |
| `protocol_audit.txt` | Protocol-level analysis including DNS hijacking and hidden port discovery |
| `tlab_report.txt` | Operation Silent Ghost — cumulative SOC Analyst IR report |
| `nmap_scan_results.txt` | Nmap port scan results across target network |

---

### Week 03 — Introduction to Python for Security Professionals
`3/23 – 3/27` &nbsp;|&nbsp; **Scripting the Defense: Python as a Force Multiplier**

| Session | Theme | Artifact |
|---------|-------|----------|
| S07 | The Sentry — Python foundations, venv isolation, socket-based port scanner | `port_check.py` |
| S08 | The Paper Trail — lists, loops, logic, IP blacklist cross-referencing | `log_filter.py` |
| S09 | The Conductor — functions, file I/O, automated firewall log parser | `firewall_bot.py` |
| TLAB | Operation Python Python — full log-parsing sentry with threat intel report | `brute_detector.py`, `incident_response.py`, `security_alert.json` |

| File | Description |
|------|-------------|
| `port_check.py` | Socket-based port scanner checking SSH (22) across target IPs |
| `brute_detector.py` | Parses auth logs to extract failed SSH login attempts |
| `system_auditor.py` | Scans running processes for unauthorized cryptominers, generates alerts |
| `incident_response.py` | Greps auth logs, extracts unique attacker IPs, exports JSON threat report |
| `security_alert.json` | Structured JSON alert output from system auditor |

---

### Week 04 — Virtualization \| Virtual Machines \| Containers
`3/30 – 4/3` &nbsp;|&nbsp; **Fortifying the Node: Infrastructure Hardening**

| Session | Theme | Artifact |
|---------|-------|----------|
| S10 | The Ghost in the Machine — hypervisors, VM networking, forensic sandbox | `sandbox_report.txt` |
| S11 | The Container Revolution — Docker fundamentals, process isolation, Nginx deployment | `deploy_web.sh` |
| S12 | The Conductor and the Fleet — Docker Compose, YAML orchestration, air-gapped networks | `docker-compose.yml` |

| File | Description |
|------|-------------|
| `sandbox_report.txt` | Forensic sandbox detonation results and malware isolation documentation |
| `deploy_web.sh` | Bash script for automated web server deployment and teardown |
| `docker-compose.yml` | Air-gapped WordPress + MySQL stack with segmented FrontEnd/BackEnd networks |
| `hyperstack_audit.json` | Audit output from Hyperstack cloud environment review |

---

### Week 05 — Identity, Access Management (IAM) & Windows Enterprise Infrastructure
`4/6 – 4/10` &nbsp;|&nbsp; **The Sovereign Domain: Centralized Governance & Identity Perimeter**

| Session | Theme | Artifact |
|---------|-------|----------|
| S13 | The Corporate Brain — Active Directory, Domain Controller promotion, PowerShell provisioning | `onboard_engineers.ps1` |
| S14 | The Invisible Hand — Group Policy Objects, LSDOU inheritance, endpoint enforcement | `gpo_audit.txt` |
| S15 | Bridging the Kingdoms — Linux-to-AD domain join, SSSD, unified sudo identity | `unified_identity.png` |
| TLAB | Operation Sovereign Domain — full domain deployment and lockdown mission | *(cumulative)* |

| File | Description |
|------|-------------|
| `onboard_engineers.ps1` | PowerShell script automating New-ADUser provisioning for five engineers into titan.local |
| `gpo_audit.txt` | GPO enforcement audit — LSDOU inheritance logic and gpupdate /force verification |

---

### Week 06 — The Forge: Sprint Finale
`4/13 – 4/15` &nbsp;|&nbsp; **Synthesis, Diagnostics, and Capstone Deployment**

| Session | Theme | Artifact |
|---------|-------|----------|
| S16 | The Architect's War Room — OSI troubleshooting, break/fix gauntlet, snap diagnostics | `readiness_check.log` |
| S17 | The Forge Final — timed technical diagnostic across all five domains, no AI assistance | `practical_exam_report.txt` |
| S18 | The Capstone: The Hardened Outpost — solo full-stack enterprise deployment | `HardenedOutpost_SAD.pdf` |

| File | Description |
|------|-------------|
| `readiness_check.log` | S16 — OSI-layer break/fix diagnostic log from the Architect's War Room |
| `practical_exam_report.txt` | Timed practical exam report spanning Linux, Networking, Python, Docker, and AD |
| `HardenedOutpost_SAD.pdf` | Security Architecture Document — solo Hardened Outpost capstone deployment |

---

### Week 07 — The Perimeter: Reconnaissance, Scanning & Vulnerability Analysis
`4/20 – 4/22` &nbsp;|&nbsp; **Sprint 2 Opens: Phase 1 of the Cyber Attack Lifecycle**

| Session | Theme | Artifact |
|---------|-------|----------|
| S19 | The Invisible Scout — OSINT, passive recon, Sublist3r, Shodan, HaveIBeenPwned | `ThreatProfile_CloudNano.md` |
| S20 | Mapping the Shadows — Nmap active scanning, ping sweep, service version enumeration | `nmap_scan_results.txt` |
| S21 | The Prioritization Matrix — Nikto scanning, CVE/CVSS triage, Risk = Likelihood × Impact | `remediation_plan.md` |

| File | Description |
|------|-------------|
| `ThreatProfile_CloudNano.md` | OSINT threat actor profile — subdomains, tech stack, credential leaks, Shodan findings |
| `nmap_scan_results.txt` | Active scan results — live hosts, open ports, and service versions on target subnet |
| `remediation_plan.md` | Vulnerability triage using Risk = Likelihood × Impact, prioritized top 5 findings |
| `Perimeter_Assessment.md` | External perimeter assessment findings and recommendations |

---

### Week 08 — The Breach: Exploitation, Privilege Escalation & Post-Exploitation
`4/27 – 4/29` &nbsp;|&nbsp; **Reconnaissance ends. Breach begins.**

| Session | Theme | Artifact |
|---------|-------|----------|
| S22 | The Verification Protocol — Netcat reverse shell, Metasploit, EternalBlue exploitation | `exploit_verification.png` |
| S23 | Climbing the Ladder — GTFOBins sudo escalation (Linux), Unquoted Service Path (Windows) | `escalation_path.txt` |
| S24 | The Deep Network — persistent cron backdoor, network pivoting, hidden subnet access | `pivot_success.png` |
| TLAB 8 | The Paper Trail — Python brute-force detector, forensic auth log analysis | `brute_detector.py` |

| File | Description |
|------|-------------|
| `escalation_path.txt` | Privilege escalation path — Linux sudo misconfiguration and Windows service hijack |
| `Deep_Pivot_Report.md` | In-depth findings from the pivot operation and lateral movement through the network |
| `Operation_Shadow_Map_Readme.md` | Operation overview and objectives for the Shadow Map pivot exercise |
| `Pivot_Operation/` | Supporting configs and artifacts for the pivot operation lab |

---

### Week 09 — The Application Layer
`5/4 – 5/6` &nbsp;|&nbsp; **Web Application Security: SQL Injection, XSS, CSRF & API Exploitation**

| Session | Theme | Artifact |
|---------|-------|----------|
| S25 | The Data Exfiltration — SQLi, login bypass, UNION attacks, schema mapping | `sqli_report.txt` |
| S26 | The Poisoned Browser — Reflected/Stored XSS, session cookie theft, CSRF | `xss_payloads.txt` |
| S27 | The Invisible Logic — Burp Suite, API interception, BOLA/IDOR exploitation | `api_audit.log` |
| TLAB 9 | Operation Omni-Portal — chained SQLi + XSS + API BOLA full-stack compromise | `OmniPortal_Assessment.md` |

| File | Description |
|------|-------------|
| `sqli_report.txt` | SQL injection findings — login bypass, UNION attack, CEO salary data exfiltration |
| `xss_payloads.txt` | Reflected and Stored XSS payloads — cookie theft and CSRF attack chain |
| `api_audit.log` | Burp Suite API interception log — BOLA flaw exploitation and brute-forced discount code |
| `OmniPortal_Assessment.md` | TLAB 9 — chained web vulnerability compromise of the Titan Omni-Portal |

---

### Week 10 — The Defender: Digital Forensics and Incident Response (DFIR)
`5/11 – 5/15` &nbsp;|&nbsp; **What happened, how did they get in, and what did they take?**

| Session | Theme | Artifact |
|---------|-------|----------|
| S28 | The Crime Scene — live response, MD5/SHA256 hashing, chain of custody | *(evidence artifacts)* |
| S29 | The Digital Autopsy — memory forensics, disk imaging, MFT file recovery (Sleuth Kit) | *(disk images)* |
| S30 | The Central Nervous System — SIEM navigation, log correlation, attack timelining (ELK) | *(timeline artifacts)* |
| TLAB 10 | Operation Phantom Pursuit — full SIEM correlation + live triage + disk forensics | `forensic_findings.md`, `Incident_Response_Report.md`, `attack_timeline.csv` |

| File | Description |
|------|-------------|
| `s30_provision.sh` | S30 — provisioning script for the ELK Stack / Kibana SIEM environment |
| `forensic_findings.md` | Digital forensics findings and evidence documentation |
| `Incident_Response_Report.md` | Full IR report with PICERL lifecycle, timeline, and remediation steps |
| `attack_timeline.csv` | Chronological attack event timeline reconstructed from SIEM log correlation |

---

### Week 12 — The Final Reckoning
`5/26 – 5/28` &nbsp;|&nbsp; **Threat Assessment · Purple Team Operations · Incident Response · Forensic Documentation · Professional Portfolio Development**

| Session | Theme | Artifact |
|---------|-------|----------|
| S34 | Memorial Day — No class | *(observed holiday)* |
| S35 | Portfolio Review — repo audit, notes.md for each week, final push | `portfolio_audit.md` |
| S36 | Phase 1 Final Reckoning (TEPP) — full spectrum solo operation: triage, breach, forensics, web exploitation, hardened perimeter | *(TEPP artifact)* |

| File | Description |
|------|-------------|
| `portfolio_audit.md` | S35 — structured audit confirming all weekly artifacts are present, correctly placed, and documented |
| `notes.md` | Reflection document required in every week folder — APA style, covering concepts, artifacts, challenges, and growth |

---

### Week 11 — The Fortress: Network Defense & Perimeter Hardening
`5/18 – 5/20` &nbsp;|&nbsp; **Three defensive layers. One unified architecture.**

| Session | Theme | Artifact |
|---------|-------|----------|
| S31 | The Barricade — UFW, iptables, DMZ architecture, egress filtering | `firewall_config.sh` |
| S32 | The Tripwire — Suricata IDS deployment, custom signature engineering | `custom_ids.rules` |
| S33 | The Last Mile — SysmonForLinux, process tracking, ransomware EDR detection | `edr_policy.xml` |
| TLAB 11 | Operation Fortress — egress filtering + IDS signatures + EDR policy, Defense in Depth | `Operation_Fortress_Report.md` |

| File | Description |
|------|-------------|
| `firewall_config.sh` | S31 — iptables/UFW firewall config with DMZ architecture and egress filtering rules |
| `custom_ids.rules` | S32 — custom Suricata IDS signatures engineered to detect specific malicious payloads |
| `edr_policy.xml` | S33 — SysmonForLinux XML EDR policy catching ransomware precursor behavior |
| `Operation_Fortress_Report.md` | TLAB 11 — Defense in Depth report: egress filtering + IDS signatures + EDR policy |

---

## 🧠 Core Concepts Covered

- **Linux Terminal Control** — FHS navigation, RWX permissions, stream editing with grep/sed/awk
- **Network Operations** — OSI layers, CIDR subnetting, DNS security, protocol interrogation
- **Python for Security** — Log parsing, brute-force detection, process auditing, TCP sockets
- **Virtualization & Containers** — Hypervisors, Docker, Docker Compose, air-gapped network design
- **IAM & Windows Enterprise** — Active Directory, Group Policy (LSDOU), PowerShell, cross-platform identity
- **Synthesis & Diagnostics** — OSI troubleshooting methodology, break/fix, capstone deployment
- **Reconnaissance** — OSINT, passive recon, Nmap scanning, CVE/CVSS triage
- **Exploitation** — Metasploit, EternalBlue, privilege escalation, persistence, network pivoting
- **Web Application Security** — SQL injection, XSS, CSRF, API exploitation (BOLA/IDOR)
- **DFIR** — PICERL lifecycle, chain of custody, memory forensics, SIEM log correlation
- **Network Defense** — iptables/UFW, DMZ architecture, Suricata IDS, endpoint detection (Sysmon)

---

## 🚀 Tools & Technologies

| Tool | Used For |
|------|----------|
| Python 3 | Log parsing, port scanning, brute-force detection, automation |
| Bash | System hardening, deployment scripts, permission management |
| PowerShell | Active Directory provisioning, GPO enforcement |
| Docker / Docker Compose | Air-gapped lab environments, containerized security stacks |
| Nmap / Socket | Port scanning and network service enumeration |
| Metasploit Framework | Exploitation, Meterpreter sessions, post-exploitation |
| Burp Suite | API interception, BOLA/IDOR exploitation, web app testing |
| Suricata | Network intrusion detection, custom signature engineering |
| SysmonForLinux | Endpoint process tracking, ransomware precursor detection |
| ELK Stack / Kibana | SIEM log correlation and attack timeline reconstruction |
| The Sleuth Kit | CLI disk forensics, deleted file recovery, MFT analysis |

---

## 📈 Progress Tracker

- [x] Week 01 `3/9–3/13` &nbsp;— Linux Terminal Control
- [x] Week 02 `3/16–3/20` — Network Operations
- [x] Week 03 `3/23–3/27` — Introduction to Python for Security Professionals
- [x] Week 04 `3/30–4/3` &nbsp;— Virtualization | Virtual Machines | Containers
- [x] Week 05 `4/6–4/10` &nbsp;— Identity, Access Management (IAM) & Windows Enterprise Infrastructure
- [x] Week 06 `4/13–4/15` — The Forge: Sprint Finale
- [x] Week 07 `4/20–4/22` — The Perimeter: Reconnaissance, Scanning & Vulnerability Analysis
- [x] Week 08 `4/27–4/29` — The Breach: Exploitation, Privilege Escalation & Post-Exploitation
- [x] Week 09 `5/4–5/6` &nbsp;&nbsp;— The Application Layer: Web Application Security
- [x] Week 10 `5/11–5/15` — The Defender: Digital Forensics and Incident Response (DFIR)
- [x] Week 11 `5/18–5/20` — The Fortress: Network Defense & Perimeter Hardening
- [ ] Week 12 `5/26–5/28` — The Final Reckoning: Portfolio Review & Phase 1 Final Reckoning (TEPP)

---

## 🤝 Connect

Open to feedback, collaboration, and learning opportunities. This repository is a living record of my growth — updated weekly as I progress through the program.
