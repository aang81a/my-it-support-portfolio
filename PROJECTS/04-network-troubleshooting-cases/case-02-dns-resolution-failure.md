case-02-dns-resolution-failure.md

# Case 02 – DNS Resolution Failure

## Problem
A user reports that websites cannot be accessed by name, but internet connection appears to be active.

## Environment
- Windows 10 / Windows 11
- Local network (LAN or Wi-Fi)
- DHCP-enabled network
- Internet connection available

## Symptoms
- Websites do not load (e.g., google.com)
- Browser shows DNS error
- Able to connect to internet using IP address (e.g., 8.8.8.8)
- Internal systems may also not resolve

---

## Diagnosis Steps

1. Checked basic connectivity:
   ping 8.8.8.8

→ Result: Successful (internet connectivity confirmed)

2. Tested DNS resolution:
   ping google.com

→ Result: Failed (DNS resolution issue)

3. Checked DNS configuration:
   ipconfig /all

→ Observed:
   - Missing or incorrect DNS server

4. Tested DNS manually:
   nslookup google.com

→ Result: DNS server not responding or incorrect response

---

## Root Cause
The device was configured with an incorrect or unreachable DNS server.

---

## Solution

1. Open Network Settings
2. Navigate to:
   Network & Internet → Adapter Options
3. Open Properties of network adapter
4. Select:
   Internet Protocol Version 4 (IPv4)
5. Configure DNS:
   - Set to automatic (DHCP), or
   - Manually set DNS server (e.g., 8.8.8.8)

6. Apply changes

7. Flush DNS cache:
   ipconfig /flushdns

---

## Result

- DNS resolution working correctly
- Websites accessible by name
- Internet fully functional

---

## Screenshots
(To be added later)

- ipconfig /all showing wrong DNS
- nslookup failure
- DNS settings correction
- nslookup success after fix

---

## Lessons Learned

- Successful ping to IP but not domain = DNS issue
- DNS misconfiguration is a common cause of connectivity problems
- nslookup is useful to test DNS functionality
- Always verify DNS server settings

---

## Skills Demonstrated

- Network troubleshooting
- DNS diagnostics (nslookup, ipconfig)
- Root cause analysis
- Problem resolution
- Technical documentation
