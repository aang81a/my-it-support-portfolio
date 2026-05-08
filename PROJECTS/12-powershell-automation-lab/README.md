# L1 Support Diagnostic Tool - Practical Application
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Windows](https://img.shields.io/badge/OS-Windows-0078D4?logo=windows&logoColor=white)
![PowerShell](https://img.shields.io/badge/Language-PowerShell-5391FE?logo=powershell&logoColor=white)


# Project goals
The primary goal of this tool is to optimize triage efficiency. By automating the collection of system details (IP, Serial, Uptime), the technician can skip manual data entry. This is designed to positively impact MTTR (Mean Time to Resolution) by allowing the support session to begin with all necessary data already at hand.


What I did: "I identified a common bottleneck in support calls—the time spent finding device information."

How I solved it: "I developed a small PowerShell utility that users can run with one click."

The Result: "A standardized text report that can be attached directly to a ticketing system (like Spiceworks or Jira)."

**How I use this in Support:**
 
1. When a user calls with a "slow PC" or "network issue," I send them the `IT-Diagnostics.zip`.
2. The user runs the tool and emails me the `.txt` file.
3. I immediately see their **IP address** (to start a remote session) and their **Last Reboot time** (to see if a restart is needed).
4. This reduces the "Initial Triage" phase by roughly 5 minutes.
