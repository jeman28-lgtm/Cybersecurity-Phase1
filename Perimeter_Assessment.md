# TITANCORP: PERIMETER ASSESSMENT REPORT
**Operator:** **Target Subnet:** 172.88.0.0/24

## PHASE 1: ACTIVE ENUMERATION (NMAP)
*(List the live IPs discovered and their running services/versions)*
* **Host 1 ([172.88.0.10]):** [nginx 1.14.2]
* **Host 2 ([172.88.0.15]):** [No ports open]
* **Host 3 ([172.88.0.20]):** [Apache httpd 2.4.67 ((Unix))]

## PHASE 2: VULNERABILITY AUDIT (NIKTO)
*(Run Nikto against the TWO web servers discovered above. List one major finding for each.)*
* **Web Server 1 Finding:** [- Outdated nginx version potentially exposing the system to known vulnerabilities.
- Missing X-Frame-Options header, increasing risk of clickjacking attacks.
- ETag inode values exposed, allowing limited system fingerprinting.]
* **Web Server 2 Finding:** [- Missing X-Frame-Options header, increasing clickjacking risk.
- HTTP TRACE method enabled, introducing potential Cross-Site Tracing (XST) vulnerability.
- ETag inode values exposed, allowing limited system fingerprinting.]

## PHASE 3: RISK TRIAGE
*(Review your findings. Identify the SINGLE highest-risk vulnerability across the entire DMZ. Justify why it is the top priority using the Likelihood x Impact formula.)*

* **Top Priority Remediation:** [nginx 1.14.2 web server]
* **Justification:** [The highest-risk finding is the outdated nginx 1.14.2 web server on 172.88.0.10 because publicly known vulnerabilities are more likely to be exploited on older internet-facing services, and successful exploitation could result in full compromise of the web application and underlying host systems.]
