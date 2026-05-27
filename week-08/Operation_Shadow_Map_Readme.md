# 🛡️ Operation Shadow Map — Perimeter Security Assessment Lab

## 📌 Overview

This project documents a full reconnaissance and vulnerability assessment performed against a simulated corporate subnet as part of a cybersecurity training lab.

The goal of this exercise was to identify live hosts, enumerate exposed services, assess web application vulnerabilities, and prioritize security risks using real-world triage methodology.

---

## 🎯 Objective

The mission focused on assessing a suspected exposed subnet:

Key goals included:

- Identifying live hosts within the subnet
- Enumerating services and software versions
- Performing web vulnerability scanning
- Identifying misconfigurations and security weaknesses
- Prioritizing findings based on real-world risk impact

---

## 🧰 Tools Used

- Nmap — Network discovery and service enumeration
- Nikto — Web vulnerability scanning
- Ubuntu Linux CLI — Lab environment
- Bash shell — Command execution
- Git — Version control and submission tracking

---

## ⚙️ Methodology

### Phase 1 — Network Reconnaissance
- Performed subnet sweep using Nmap (`-sn`)
- Identified active hosts
- Conducted service version detection (`-sV`)

### Phase 2 — Vulnerability Scanning
- Identified web-facing services (HTTP port 80)
- Ran Nikto scans against discovered web servers
- Collected findings including missing headers, outdated services, and unsafe HTTP methods

### Phase 3 — Risk Analysis & Triage
- Evaluated vulnerabilities using Risk = Likelihood × Impact
- Prioritized findings based on exploitability and exposure
- Identified highest-risk asset in the environment

---

## 🔍 Key Findings

### Web Server: 172.88.0.10
- nginx 1.14.2 detected (potentially outdated)
- Missing X-Frame-Options security header
- ETag inode information leakage

### Web Server: 172.88.0.20
- Apache 2.4.67 detected
- Missing X-Frame-Options security header
- HTTP TRACE method enabled (potential XST risk)
- ETag inode information leakage

---

## 🚨 Highest Risk Finding

The most critical vulnerability identified was the outdated nginx web server (172.88.0.10), due to its potential exposure to known vulnerabilities and higher likelihood of exploitation in a real-world internet-facing scenario.

---

## 📊 Key Takeaways

- Network reconnaissance is essential for understanding attack surface exposure
- Version detection is critical for vulnerability mapping
- Misconfigurations (missing headers, enabled TRACE) can introduce security risks
- Risk prioritization is more important than listing raw findings
- Real-world security work focuses on business impact, not just technical issues

---

## 📁 Files in This Repository

- `Perimeter_Assessment.md` → Full lab report with detailed findings and risk analysis
- `README.md` → Project overview and methodology summary

---

## 🧠 Learning Outcome

This lab simulates a real-world perimeter security assessment workflow used in SOC, penetration testing, and vulnerability management roles. It demonstrates the ability to move from raw scan data → structured analysis → executive-level risk reporting.

---

## 📌 Author

Cybersecurity Training Lab — Operation Shadow Map  
Focus: Network Security, Vulnerability Assessment, Risk Triage
