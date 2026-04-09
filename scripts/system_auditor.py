#!/usr/bin/env python3
import subprocess
import json

print("[*] Initiating System Audit...")

# INSTRUCTION 1: Run 'ps aux' and capture output
process_list = subprocess.run(["ps", "aux"], capture_output=True, text=True)

# INSTRUCTION 2: Search the captured output for the malicious process
alert_data = None

if "unauthorized_cryptominer" in process_list.stdout:
    # INSTRUCTION 3: If found, create a structured alert dictionary
    alert_data = {
        "event": "Unauthorized Process",
        "severity": "High",
        "process": "unauthorized_cryptominer"
    }
    # INSTRUCTION 4: Export alert to JSON
    with open("security_alert.json", "w") as file:
        json.dump(alert_data, file, indent=4)
    print("[!] ALERT: Malicious process detected. Report saved to security_alert.json")
else:
    print("[+] No malicious processes found.")

print("[+] Audit Complete.")
