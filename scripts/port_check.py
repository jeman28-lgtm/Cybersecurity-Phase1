#!/usr/bin/env python3
import socket

# Target servers to check
targets = ["127.0.0.1", "8.8.8.8", "1.1.1.1", "10.0.0.1"]

for ip in targets:
    print(f"--- Checking Server: {ip} ---")
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.settimeout(1)
    result = s.connect_ex((ip, 22))
    if result == 0:
        print(f"[OPEN]   Port 22 (SSH) is OPEN on {ip}")
    else:
        print(f"[CLOSED] Port 22 (SSH) is CLOSED on {ip}")
    s.close()
