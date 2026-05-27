#!/bin/bash
# S30 Provisioning: Local ELK SIEM & Log Injection Sandbox
if [[ $EUID -ne 0 ]]; then
    echo "[-] Error: This script must be run with sudo."
    exit 1
fi
export DEBIAN_FRONTEND=noninteractive
TARGET_USER=${SUDO_USER:-$(logname 2>/dev/null || echo $USER)}
USER_HOME=$(eval echo ~$TARGET_USER)
echo "[*] Initializing The Central Nervous System for operator: $TARGET_USER..."

# 1. Deploy Resource-Optimized ELK Stack
echo "[*] Deploying SIEM (Elasticsearch + Kibana)... This will take ~2 minutes."
docker rm -f siem-elk > /dev/null 2>&1
# Using a lightweight ELK image, capping memory to prevent VM crashes
docker run -d --name siem-elk -e "cluster.routing.allocation.disk.threshold_enabled=false" -p 5601:5601 -p 9200:9200 -e ES_JAVA_OPTS="-Xms512m -Xmx512m" sebp/elk > /dev/null 2>&1

echo "[*] Waiting for SIEM services to boot (60 seconds)..."
sleep 60 

# 2. Inject Mock Log Data (The Sabotage)
echo "[*] Injecting Enterprise Log Data..."

# Web Server Log (Initial Access)
curl -s -X POST "http://localhost:9200/enterprise_logs/_doc/" -H 'Content-Type: application/json' -d'
{"@timestamp":"2026-04-30T10:15:00Z", "source_ip":"198.51.100.44", "event_type":"Web Server", "message":"POST /api/upload - 200 OK - Malicious payload executed", "action":"Initial Access"}' > /dev/null 2>&1

# Multiple Failed Logins (Micro-Lab Target)
curl -s -X POST "http://localhost:9200/enterprise_logs/_doc/" -H 'Content-Type: application/json' -d'
{"@timestamp":"2026-04-30T10:18:00Z", "source_ip":"198.51.100.44", "event_type":"Failed Login", "message":"Authentication failed for user: admin", "action":"Failed Login"}' > /dev/null 2>&1

# Windows Security Log (Lateral Movement)
curl -s -X POST "http://localhost:9200/enterprise_logs/_doc/" -H 'Content-Type: application/json' -d'
{"@timestamp":"2026-04-30T10:25:00Z", "source_ip":"10.0.5.15", "event_type":"Windows Security", "message":"Event ID 4624: Successful Logon. User escalated to Domain Admin", "action":"Lateral Movement"}' > /dev/null 2>&1

# Firewall Log (Exfiltration)
curl -s -X POST "http://localhost:9200/enterprise_logs/_doc/" -H 'Content-Type: application/json' -d'
{"@timestamp":"2026-04-30T10:45:00Z", "source_ip":"10.0.5.15", "destination_ip":"198.51.100.44", "event_type":"Firewall", "message":"Outbound traffic anomalous volume: 4.5 GB transferred over port 443", "action":"Exfiltration"}' > /dev/null 2>&1

# 3. Artifact Generation: CSV Skeleton
cat << 'CSV_EOF' > "$USER_HOME/attack_timeline.csv"
Timestamp,Source IP,Event Type,Action,Description
[Time 1],[IP 1],[Type 1],Initial Access,[Description 1]
[Time 2],[IP 2],[Type 2],Lateral Movement,[Description 2]
[Time 3],[IP 3],[Type 3],Exfiltration,[Description 3]
CSV_EOF

chown $TARGET_USER:$TARGET_USER "$USER_HOME/attack_timeline.csv"

echo "[+] PROVISIONING COMPLETE."
echo "[+] SIEM is live. Access Kibana in your Firefox browser at: http://localhost:5601"
echo "[+] Enterprise logs successfully indexed."
echo "[+] Save your timeline to: ~/attack_timeline.csv"