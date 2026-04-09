#!/bin/bash
# T1-M1-S02: SECURITY HARDENING AUTOMATION
# Task: Restore Gold Standard permissions to restricted artifacts.

# Secure ~/Vault/secrets.txt — owner read/write only (600)
chmod 600 ~/Vault/secrets.txt
echo "[+] ~/Vault/secrets.txt secured: 600"

# Secure /etc/shadow — root read/write, shadow group read-only (640)
sudo chmod 640 /etc/shadow
sudo chown root:shadow /etc/shadow
echo "[+] /etc/shadow secured: 640, owner: root:shadow"

echo "[✓] Hardening complete."
