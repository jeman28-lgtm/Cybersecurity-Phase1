#!/usr/bin/env python3
import subprocess
import json

print("[*] Initiating Automated Threat Hunt...")

# TASK 1: Use subprocess to grep for 'Failed password' in the auth log
result = subprocess.run(
    ["grep", "Failed password", "/var/log/titan_sim/auth_sim.log"],
    capture_output=True,
    text=True
)

raw_output = result.stdout

# TASK 2: Parse output to extract attacking IP addresses
# Logs follow sshd format: the IP appears after the word 'from'
lines = raw_output.strip().split('\n')
attacker_ips = []

for line in lines:
    if not line:
        continue
    parts = line.split()
    if "from" in parts:
        ip_index = parts.index("from") + 1
        ip = parts[ip_index]
        if ip not in attacker_ips:  # Deduplicate IPs
            attacker_ips.append(ip)

# TASK 3: Create structured alert and export to threat_report.json
alert_data = {
    "alert_type": "Brute Force",
    "attacker_ips": attacker_ips
}

with open("threat_report.json", "w") as file:
    json.dump(alert_data, file, indent=4)

print(f"[*] {len(attacker_ips)} unique attacker IP(s) identified.")
print("✅ Threat report generated: threat_report.json")
