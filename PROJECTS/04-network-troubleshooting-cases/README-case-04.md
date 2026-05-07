# Network Troubleshooting Cases

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Network%20Troubleshooting-blue)
![OS](https://img.shields.io/badge/OS-Windows%2010%20%7C%2011-0078D4?logo=windows&logoColor=white)
![Skill](https://img.shields.io/badge/Skill-IPv4%20%26%20DHCP-blue)
![Tool](https://img.shields.io/badge/Tool-Command%20Prompt-black?logo=windows-terminal&logoColor=white)

## Overview

This section documents practical Windows network troubleshooting cases for first-level IT support practice.

The cases focus on common connectivity issues, IPv4 configuration, DHCP behaviour, command-line diagnostics, and structured troubleshooting documentation.

---

## Cases Included

| Case | Topic | 
|---|---|
| [Case 04 – IP Misconfiguration Across Multiple Devices](case-04-ip-misconfiguration-across-multiple-devices.md) | Wrong static IPv4/DNS configuration, DHCP restore, Ethernet vs Wi-Fi vs mobile hotspot comparison |

---

## Future Cases

The following cases are planned or kept as draft ideas:

- Case 01 – No Network Access
- Case 02 – DNS Resolution Failure
- Case 03 – Shared Folder Access Denied

---

## Tools and Settings Used

- Windows Network Connections (`ncpa.cpl`)
- Command Prompt (`cmd`)
- Network adapter IPv4 settings
- DHCP-enabled home router network
- DHCP-enabled mobile hotspot network
- Ethernet connection
- Wi-Fi connection

---

## Troubleshooting Approach

The troubleshooting process used in these cases is based on a structured support workflow:

- gather information
- check adapter and IP configuration
- test gateway, external IP, and DNS connectivity
- apply the solution
- verify restored connectivity
- document the result

Related method note:

- [Troubleshooting Method](PROJECTS/04-network-troubleshooting-cases/diagrams/troubleshooting-method.md)

---

## Skills Demonstrated

- Windows network adapter configuration
- IPv4 troubleshooting
- DHCP restore
- Checking IP configuration with `ipconfig`
- Verifying connectivity with command-line tests:
  - `ping 192.168.99.1`
  - `ping 8.8.8.8`
  - `ping google.com`
- Releasing and renewing network configuration:
  - `ipconfig /release`
  - `ipconfig /renew`
- Comparing Ethernet, home Wi-Fi, and mobile hotspot behaviour
- Documenting a structured network troubleshooting workflow

---

## Notes

Related knowledge base article: [How to troubleshoot no internet](../06-knowledge-base-articles/how-to-troubleshoot-no-internet.md)
