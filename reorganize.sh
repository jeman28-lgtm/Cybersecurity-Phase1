#!/bin/bash
# ============================================================
# Cybersecurity-Phase1 — Weekly Reorganization Script
# Run this from the root of your cloned repo:
#   bash reorganize.sh
# ============================================================

# ── Create all weekly folders ────────────────────────────────
mkdir -p week-01 week-02 week-03 week-04 week-05 \
         week-06 week-07 week-08 week-09 week-10 week-11

# ── Week 01: Linux Terminal Control (3/9–3/13) ───────────────
git mv discovery.txt          week-01/
git mv harden.sh              week-01/
git mv threat_ips.txt         week-01/
git mv final_threat_report.txt week-01/
git mv collection_log.txt     week-01/

# ── Week 02: Network Operations (3/16–3/20) ──────────────────
git mv network_audit.txt      week-02/
git mv subnet_blueprint.txt   week-02/
git mv protocol_audit.txt     week-02/
git mv tlab_report.txt        week-02/
git mv nmap_scan_results.txt  week-02/

# ── Week 03: Python for Security (3/23–3/27) ─────────────────
git mv port_check.py          week-03/
git mv brute_detector.py      week-03/
git mv system_auditor.py      week-03/
git mv incident_response.py   week-03/
git mv security_alert.json    week-03/

# ── Week 04: Virtualization | VMs | Containers (3/30–4/3) ────
git mv sandbox_report.txt     week-04/
git mv deploy_web.sh          week-04/
git mv docker-compose.yml     week-04/
git mv hyperstack_audit.json  week-04/

# ── Week 05: IAM & Windows Enterprise (4/6–4/10) ─────────────
git mv onboard_engineers.ps1  week-05/
git mv gpo_audit.txt          week-05/

# ── Week 06: The Forge — Sprint Finale (4/13–4/15) ───────────
git mv readiness_check.log       week-06/
git mv practical_exam_report.txt week-06/
git mv HardenedOutpost_SAD.pdf   week-06/

# ── Week 07: The Perimeter — Recon & Scanning (4/20–4/22) ────
git mv ThreatProfile_CloudNano.md week-07/
git mv Perimeter_Assessment.md    week-07/
git mv remediation_plan.md        week-07/

# ── Week 08: The Breach — Exploitation (4/27–4/29) ───────────
git mv escalation_path.txt           week-08/
git mv Deep_Pivot_Report.md          week-08/
git mv Operation_Shadow_Map_Readme.md week-08/
git mv Pivot_Operation/              week-08/

# ── Week 09: The Application Layer (5/4–5/6) ─────────────────
git mv sqli_report.txt        week-09/
git mv xss_payloads.txt       week-09/
git mv api_audit.log          week-09/
git mv OmniPortal_Assessment.md week-09/

# ── Week 10: DFIR (5/11–5/15) ────────────────────────────────
git mv forensic_findings.md       week-10/
git mv Incident_Response_Report.md week-10/
git mv attack_timeline.csv        week-10/

# ── Week 11: Network Defense (5/18–5/20) — artifacts TBD ─────
# Add artifacts here as they are completed

# ── Remaining loose files ─────────────────────────────────────
# These didn't map cleanly to a single week — place manually:
# threat_report.json  →  week-07/ or week-08/ depending on context
# nmap_scan_results.txt → already moved to week-02, also referenced in week-07

# ── Commit & push ─────────────────────────────────────────────
git add .
git commit -m "refactor: reorganize repo into weekly structure (week-01 through week-11)"
git push origin main
