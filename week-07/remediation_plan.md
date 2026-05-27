# CLOUDNANO REMEDIATION PLAN
**Operator:** ## TOP 5 CRITICAL FIXES
*(From the 20 raw findings, select the 5 that pose the greatest ACTUAL risk. Explain your reasoning.)*

1. **[Unauthenticated AWS S3 Bucket]**
   * **Justification:** [Why did you pick this over a theoretical CVSS 10.0?  Because it is public-facing and Critical Impact  that contains Customer PII, which poses a massive compliance and privacy risk.]

2. **[Remote Code Execution in Apache Struts (Internet-Facing Web Server)]**
   * **Justification:** [Internet facing and attackers can get full control of the server.This is a complete system takeover from the internet.]

3. **[SQL Injection in Login Page (Customer Database Portal)]**
   * **Justification:** [Direct path to customer data compromise and system manipulation. Extremely dangerous if publicly accessible.]

4. **[SMBv1 Enabled (Internal HR File Server)]**
   * **Justification:** [This is a post-breach amplifier—it turns a small compromise into a full-blown internal incident.]

5. **[Cross-Site Scripting (XSS) on Support Forum]**
   * **Justification:** [It can steal session cookies, Hijackuser admin/admin accounts, deliver malware and can be a stepping stone into deeper sysytems]
