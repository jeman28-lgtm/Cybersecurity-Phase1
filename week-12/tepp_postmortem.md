# Phase 1 Final Reckoning — TEPP Post-Mortem
**Operator:** [James Emanuel]
**Date:** May 30, 2026
**Repository:** [https://github.com/jeman28-lgtm/Cybersecurity-Phase1]
**TKH Innovation Fellowship 2026 | Phase 1 | Cybersecurity**

---

## Phase 0: Reconnaissance

### Triage Network — 172.100.0.0/24
Reconnaissance of the 172.100.0.0/24 subnet identified three active hosts at 172.100.0.11, 172.100.0.12, and 172.100.0.13. Full-port scanning and service enumeration using Nmap revealed that 172.100.0.11 was running an exposed Redis key-value store on TCP port 6379, while 172.100.0.12 exposed an FTP service (vsftpd 3.0.2) on TCP port 21. The third host, 172.100.0.13, did not expose any network-facing services, indicating that its vulnerability was likely related to local system configuration rather than external service exposure. The presence of Redis and FTP services suggests misconfigurations involving unnecessary network exposure and insecure protocol usage. These findings indicated multiple attack surfaces requiring both network-level and host-level remediation.

### Breach Network — 172.80.0.0/24
Scanning of the 172.80.0.0/24 subnet identified a single active host at 172.80.0.10. Initial full-port scanning indicated that all ports were filtered, suggesting the presence of a firewall or access control mechanism restricting service visibility. However, assignment context indicated the presence of a vulnerable SSH service, informing the decision to perform deeper targeted scanning using non-ICMP-based techniques. The filtering behavior suggested that the service was intentionally hidden or protected from basic discovery methods. This observation informed a focused brute-force approach in Phase 2 using SSH authentication attack techniques against the expected service.

### Exploitation Network — 172.60.0.0/24
Reconnaissance of the 172.60.0.0/24 subnet identified two active hosts at 172.60.0.1 and 172.60.0.10. Service enumeration revealed that 172.60.0.10 was running a Python-based HTTP server (BaseHTTPServer 0.6) on TCP port 80. The use of a lightweight Python HTTP server in a production-like environment suggested potential insecure coding practices or lack of input validation. This finding indicated a high probability of web application vulnerabilities, including command injection or unsafe system command execution. Based on these observations, Phase 3 was approached with the assumption that the web application may be vulnerable to crafted HTTP requests enabling remote command execution.

---

## Phase 1: Rapid Triage

### Server 1 — 172.100.0.11
**Vulnerability Identified:**
An exposed Redis key-value store was identified running on TCP port 6379 and bound to all network interfaces (0.0.0.0). The service was confirmed using Nmap service enumeration and validated within the container using netstat, which showed Redis actively listening on all interfaces without any access restrictions.

**Remediation Commands:**
docker exec -it broken_server_1 sh
iptables -A INPUT -p tcp --dport 6379 -j DROP
iptables -L -n

**Before State:**
Redis was accessible on port 6379 and bound to 0.0.0.0, allowing unrestricted network access to the service.

**After State:**
Firewall rules were applied using iptables, blocking inbound traffic to TCP port 6379 and preventing external access to the Redis service.

**Analysis:**
Exposure of Redis to an untrusted network significantly increases the risk of unauthorized data access and manipulation. In enterprise environments, misconfigured database services can be exploited to retrieve sensitive information or alter application state without authentication. This violates the principle of least privilege and expands the system’s attack surface unnecessarily.

### Server 2 — 172.100.0.12
**Vulnerability Identified:**
An unauthorized FTP service (vsftpd 3.0.2) was found running on TCP port 21. The service was confirmed through Nmap service detection and process enumeration within the container, which identified the vsftpd daemon actively running.

**Remediation Commands:**
docker exec -it broken_server_2 sh
kill 21
ps aux

**Before State:**
The vsftpd FTP service was actively running and listening on port 21, exposing an insecure protocol to the network.

**After State:**
The FTP daemon process was terminated, and the service was no longer active in the process list.

**Analysis:**
FTP transmits credentials and data in plaintext, making it vulnerable to interception and credential theft. Unauthorized services increase system complexity and provide unnecessary attack vectors that can be exploited for initial access or lateral movement. In secure enterprise environments, only explicitly approved services should be running to minimize exposure.

### Server 3 — 172.100.0.13
**Vulnerability Identified:**
Multiple world-writable directories were identified, including /var/www/html, which was incorrectly configured with overly permissive write permissions allowing modification by any user

**Remediation Commands:**
docker exec -it broken_server_3 sh
chmod 755 /var/www/html
ls -ld /var/www/html

**Before State:**
The /var/www/html directory was configured with world-writable permissions, allowing unrestricted modification of web-accessible files.

**After State:**
Permissions were corrected to 755, restricting write access to the owner while maintaining read and execute permissions for other users.

**Analysis:**
World-writable web directories introduce severe security risks, as attackers can modify hosted content or inject malicious scripts. This can lead to website defacement, data manipulation, or remote code execution depending on application behavior. In enterprise environments, strict file permission controls are essential to preserve system integrity and prevent unauthorized modifications.

---

## Phase 2: The Breach

**Cracked Credentials:**
- Username: root
- Password: admin123

**Forensic Evidence:**
- Exact Timestamp of Successful Login: [timestamp from auth logs]
- Attacker IP Address: [IP recorded in the logs]

**Engineered iptables Rule:**
[Complete iptables command — chain, action, and target IP]

**SOC Analysis:**
[2–3 sentences in APA style — why is a single iptables block rule
insufficient as a standalone defensive measure? What additional
controls would a real SOC deploy alongside it?]

---

## Phase 3: Full Spectrum

**Listener Configuration:**
Netcat was configured using a TCP listening utility on a designated port to capture incoming connections from the target system. The listener was bound to the attacker machine’s IP address on the 172.60.0.0/24 subnet and left running in a dedicated terminal session to receive potential reverse connections generated by the exploited service.

**Reverse Shell Payload:**
A curl request was constructed to send a maliciously crafted parameter to the vulnerable HTTP endpoint. The injected payload attempted to execute system-level commands on the server by appending additional shell instructions to user-controlled input, causing the server to process unintended operating system execution through the web application. history | grep curl

**Command Injection Explanation:**
Command injection is a vulnerability that occurs when an application passes unsanitized user input directly into a system shell command. An attacker can manipulate this input to execute arbitrary commands on the underlying operating system. This vulnerability exists because the application fails to enforce strict input validation and improperly trusts external data within a command execution context. As a result, the attacker is able to break out of the intended command structure and execute unauthorized system-level instructions.

**Forensic Evidence:**
- Process ID (PID): [PID from access.log]
- User-Agent: [User-Agent string from access.log]

**Lockdown Command:**
[Exact iptables command applied inside the container]

**Final Analytical Paragraph:**
[4–6 sentences in APA style responding to: You have now played both
sides of this operation. What does executing this attack teach you
about defending against it? What single defensive control, if it had
been in place before you attacked, would have stopped this breach
entirely — and why?]

---

## References
[APA format. Any tools, documentation, or resources referenced
during this operation.
Example: Hydra Project. (2024). THC-Hydra: A fast and flexible
online password cracking tool. https://github.com/vanhauser-thc/thc-hydra]
