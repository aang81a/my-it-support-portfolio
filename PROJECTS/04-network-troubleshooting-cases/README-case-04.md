# Network Troubleshooting Cases

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Network%20Troubleshooting-blue)
![OS](https://img.shields.io/badge/OS-Windows%2010%20%7C%2011-0078D4?logo=windows&logoColor=white)

---

## Overview

This section documents Windows network troubleshooting cases based on common first-level IT support scenarios.

The focus is on connectivity issues, IPv4 configuration, DHCP behaviour, command-line diagnostics, and structured troubleshooting documentation.

---

## Cases

| Case | Topic | Status |
|---|---|---|
| [Case 04 – IP Misconfiguration Across Multiple Devices](case-04-ip-misconfiguration-across-multiple-devices.md) | Wrong static IPv4/DNS configuration, DHCP restore, Ethernet vs Wi-Fi vs mobile hotspot comparison | Completed ✅ |
| Case 01 – No Network Access | Basic network access troubleshooting | Planned |
| Case 02 – DNS Resolution Failure | DNS/name resolution troubleshooting | Planned |
| Case 03 – Shared Folder Access Denied | Shared folder access and permission issue | Planned |

---



---

## Troubleshooting Approach

The troubleshooting process used in this case follows a structured support workflow:

- gather information
- check adapter and IP configuration
- test gateway, external IP, and DNS connectivity
- apply the solution
- verify restored connectivity
- document the result

Related method note:

- [Troubleshooting Method](diagrams/troubleshooting-method.md)

---

## Related Documentation

- [Internal Support Note: How to Troubleshoot No Network Access](../08-internal-support-notes/how-to-troubleshoot-no-network-access.md) – quick-reference note for network access troubleshooting

---

## Notes

#### Case Documentation Structure

Each troubleshooting case is documented with a clear structure:

- **Problem** – issue reported or simulated
- **Environment** – device, operating system, adapter, and network context
- **Diagnosis Steps** – checks and commands used during troubleshooting
- **Root Cause** – identified reason for the issue
- **Solution** – action taken to resolve the problem
- **Result** – verification after applying the fix
- **Screenshots** – visual evidence where relevant
- **Lessons Learned** – key takeaways from the case

