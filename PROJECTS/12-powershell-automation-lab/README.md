# 🚀 1st Level Support Metadata Collector

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Windows](https://img.shields.io/badge/OS-Windows-0078D4?logo=windows&logoColor=white)
![PowerShell](https://img.shields.io/badge/Language-PowerShell-5391FE?logo=powershell&logoColor=white)

**PowerShell automation for collecting support-relevant system details.**

This project demonstrates a realistic 1st Level Support automation workflow. I created a PowerShell script to collect support-relevant system metadata, tested it on multiple Windows systems, documented the troubleshooting process, and wrote both technician-facing and user-facing documentation.

The workflow creates a standardized text report with details such as computer name, current user, IP address, serial number, Windows version, last reboot time, and antivirus status.

This can support the first information-gathering step during a support request and reduce manual back-and-forth with the end user.

During local testing, I also explored packaging the script as an executable. Because unsigned executables can trigger antivirus or SmartScreen warnings, I decided to publish the readable PowerShell script as the main public artifact.

---

## 📖 Project Overview

This project focuses on automating repetitive support information collection for 1st Level Support.

In a support situation, technicians often need basic device details before they can continue with troubleshooting or documentation. Instead of asking the user to manually find values such as the computer name, IP address, serial number, Windows version, or last reboot time, this workflow collects the information into a standardized report.

The project includes:

- a PowerShell script for collecting support-relevant system metadata
- a standardized text report format
- local testing of `.exe` packaging for a user-friendly workflow
- screenshots showing testing and validation
- a troubleshooting log documenting issues and fixes
- technician-facing SOP documentation
- user-facing knowledge base documentation

---

## 🎯 Project Goals

The primary goal of this tool is to **support the first information-gathering step** in a 1st Level Support request.

By automating the collection of system details such as IP address, serial number, and last reboot time, the technician can skip manual data entry and begin the support session with the necessary technical context already available.

This can support faster handling of support requests and may positively impact MTTR (Mean Time to Resolution).

---

## ❓ The Problem

In 1st Level Support, valuable time can be lost guiding users through manual steps to find basic device information.

Common examples:
- IPv4 Addresses❓
- Hardware Serial Numbers (for warranty/asset tracking)❓
- System Uptime (to check if they actually rebooted)❓
  
- “What is your computer name?”
- “What is your IP address?”
- “When was the device last restarted?”
- “Which Windows version is installed?”
- “Which antivirus product is currently registered?”

For non-technical users, these details are not always easy to find. This can slow down the first part of the support process and increase the chance of incorrect or incomplete ticket documentation.

---

## ✅ The Solution

The solution is a PowerShell-based support metadata collector.

The workflow collects support-relevant system details and writes them into a standardized report file:

`TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`

The report can then be attached to a support ticket or shared with the IT technician.

Collected details include:

- computer name
- current user
- IP address
- serial number
- Windows version
- last reboot time
- antivirus status

---

## 🛠️ Technical Credits

This project utilizes the [PS2EXE module](https://github.com/MScholtes/PS2EXE) created by Markus Scholtes. I have used this open-source tool to compile my custom PowerShell logic into a user-friendly binary format during local testing.

For public portfolio review, the readable PowerShell source file is provided instead of the unsigned executable.

---

## 🔐 Security & Transparency Note

During testing, I also compiled the script into an executable using PS2EXE.

Because unsigned executables can trigger antivirus or SmartScreen warnings, the public portfolio version is provided as a readable PowerShell script instead.

Unsigned executables created from scripts may trigger heuristic antivirus detections. For transparency and trust, this repository provides the PowerShell source script as the main artifact instead of requiring users to run an executable.

---

## 🚀 How This Workflow Would Be Used in Support 🚀🚀🚀🚀🚀

### Public Portfolio Version

For this portfolio, the main public artifact is:

`collect-support-info.ps1`

This allows reviewers to inspect the script logic and see exactly which system details are collected.

### Intended 1st Level Support Workflow

In a real support environment, the technician would provide an approved runnable version of the tool or guide the user through the company-approved process.

1. A user contacts 1st Level Support with a slow PC, network issue, or unclear system problem.
2. The technician needs basic device information before continuing.
3. The user runs the approved support information collector.
4. The workflow creates a report named like:

   `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`

5. The user sends the report back to IT Support or attaches it to the support ticket.
6. The technician receives standardized device details without manually asking for each value.

This supports a more efficient and consistent first support interaction.

---

## 🚀 How to Use

KB User Guide (how-to-run-the-it-diagnostic-tool.md)

**User Guide:**

1.  Download the `Run-Diagnostics.bat` and `collect-support-info.ps1` files.
2.  Place both in the same folder.
3.  Double-click `Run-Diagnostics.bat`.
4.  Send the resulting text file to the IT Helpdesk!


**How I use this in Support:**
 
1. When a user calls with a "slow PC" or "network issue," I send them the `IT-Diagnostics.zip`.
1. When a user calls the 1st level helpdesk, the first 5 minutes are often wasted asking: _"What is your computer name?"_ or _"What is your IP address?"_
2. A script that the user can run with one click to gather all necessary info for the technician.
3. The user runs the tool and emails me the `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt` file.
4. I immediately see their **IP address** (to start a remote session) and their **Last Reboot time** (to see if a restart is needed).
5. This reduces the "Initial Triage" phase by roughly 5 minutes.

---

## 🧾 Sample Output

A sanitized sample report is included here:

[`sample-output/TechSupport_Report_sample.txt`](sample-output/TechSupport_Report_sample.txt)

Example structure:

```text
------------------------------------------------
IT SUPPORT DIAGNOSTIC REPORT
------------------------------------------------
Date/Time:        2026-mm-dd_hh-mm-ss
Computer Name:    PC2-SAMPLE
Current User:     sample.user
IP Address:       192.168.1.100
Serial Number:    5XXXXXXX
Windows Version:  Windows 10 Pro
Last Reboot:      mm/dd/2026 18:16:32
Antivirus:        Malwarebytes, Windows Defender
------------------------------------------------
```


---


## 🛠️ Key Features
- **Zero-Install:** Runs directly from a folder or USB drive.
- **Automated Export:** Saves a `TechSupport_Report_yyyyy-mm-dd_hh-mm-ss.txt` to the user's desktop for easy emailing.
- **Technician-Focused Data:** Includes last boot time, serial number, and network details.
- No Admin rights required for basic info.
- Automated file export for easy emailing to the Helpdesk.

---

## 📸 Screenshots

1. Run your script on your own computer.
2. Take a clean screenshot of the result window.
3. Upload that image to your GitHub repo and link it in the `README.md`.

![Diagnostic Output Example](12-powershell-automation-lab/screenshots
/01.png)

![Final Success](./screenshots/04-final-success-validation.png).

*(Pro Tip: Add a clear screenshot showing the green success text in the terminal)*


new
Screenshot of the code
Screenshot of the output
Screenshot of the .txt file
Final success screenshot
Second computer validation
Security check
or
script/source overview
timestamped report created
final success validation
second computer validation
security check / no McAfee

---

## 🧠 Technical Skills Demonstrated
- **Automation:** PowerShell scripting and batch automation.
- **System Administration:** Interfacing with Windows system objects (WMI/CIM).
- **ITSM Efficiency:** Focus on reducing Mean-Time-To-Resolution (MTTR).

- PowerShell Scripting: Variables, Objects, and System Cmdlets (Get-CimInstance).
- Windows Administration: Environment variables and file system paths.
- User Experience (UX): Creating a "One-Click" solution for non-tech users.
- Version Control: Managed via GitHub.

new:
Show L1-relevant skills without overclaiming:
Automation
PowerShell scripting
System Administration
WMI/CIM
Windows environment variables
User Experience
Version control / GitHub
Technical writing
SOP
KBA
Security awareness

## Skills Demonstrated - must be rewritten, too

- **PowerShell exposure:** used and tested PowerShell commands such as `Get-CimInstance`, `Get-NetIPAddress`, and `Out-File`.
- **Automation thinking:** automated repetitive collection of support-relevant system metadata.
- **Windows support basics:** worked with computer name, user context, IP address, serial number, Windows version, reboot time, and antivirus status.
- **WMI/CIM awareness:** used Windows management queries to retrieve device and antivirus information.
- **Testing discipline:** tested the workflow locally and on a second Windows computer.
- **Documentation:** created a README, SOP, user-facing KBA, changelog, sample output, and troubleshooting log.
- **Security awareness:** decided to publish the readable `.ps1` source instead of requiring users to run an unsigned `.exe`.


- **Automation thinking:** used PowerShell to reduce repetitive manual collection of support-relevant system details.
- **Basic PowerShell exposure:** worked with commands such as `Get-CimInstance`, `Get-NetIPAddress`, `Out-File`, and `Out-String`.
- **Windows support basics:** collected computer name, current user, IP address, serial number, Windows version, last reboot time, and antivirus status.
- **WMI/CIM awareness:** used Windows management queries to retrieve system and antivirus information.
- **Testing discipline:** tested the workflow locally and on a second Windows computer.
- **Documentation:** created a README, SOP, user-facing knowledge base article, changelog, sample output, and troubleshooting log.
- **Security awareness:** chose to publish the readable `.ps1` source instead of requiring users to run an unsigned `.exe`.



## Links to supporting documents

TROUBLESHOOTING-LOG.md
SOP-support-info-tool.md
KBA-how-to-run-support-info-tool.md
CHANGELOG.md
sample-output/techsupport_report_sample.txt

---

## Notes

What I did: "I identified a common bottleneck in support calls—the time spent finding device information."

How I solved it: "I developed a small PowerShell utility that users can run with one click."

The Result: "A standardized text report that can be attached directly to a ticketing system (like Spiceworks or Jira)."

---
--------
--------- Finish line --------
--------
---

# ➡️ for me 
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)

### The workflow

- Preparation: I identified that manual data collection slows down remote sessions.
- Implementation: I developed a PowerShell script that pulls BIOS serial numbers, network data, and system uptime.
- Deployment: I converted the script into a .bat or shortcut that a user can run without needing admin rights.
- Result: This saves the technician ~3-5 minutes per call and ensures the documentation (Ticket) has 100% accurate system details.

### Portfolio Note: 
- Explain that the Run-Diagnostics.bat allows non-technical users to run diagnostics without knowing how to open a terminal.

### To make this "Gold," I thought about Security & Execution Policy in TROUBLESHOOTING-LOG.MD.
- The Problem: By default, Windows blocks PowerShell scripts.
- The Pro Solution: I would run the script using this bypass command:

`PowerShell.exe -ExecutionPolicy Bypass -File .\Get-Info.ps1` - Put it only in troubleshooting-log.md as an earlier tested approach, not as a recommended public method.

### What to put in your Portfolio (Visuals):
- Screenshot of the Code: Use a "Dark Mode" editor like VS Code (it looks professional).
- Screenshot of the Output: Show the green text in the blue PowerShell window.
- Screenshot of the .txt file: Show the result on a desktop.
- Pro Tip: If you put this on GitHub, mention in your CV: "Familiar with Git/GitHub for version control of support scripts."

### To make this project truly "gold," include these additional pieces of evidence: [[1](https://www.youtube.com/watch?v=GfVgpKWDMAI)]

1. **The "Business Value" Write-up:** On your portfolio website or LinkedIn, write a short paragraph explaining the _impact_. For example: _"By automating the system info collection, I estimate a 40% reduction in the first 5 minutes of a typical support call."_
✅40% - It sounds invented unless you measured it. _The goal is to reduce the time spent manually asking users for basic device information during the first support contact._ or _This can save several minutes during the first information-gathering step, especially when users do not know where to find IP address, serial number, or Windows version._

3. ✅**Standard Operating Procedure (SOP):** Include a short, one-page PDF guide for a fellow technician on how to update the script if the company gets new hardware.
4. ✅**Version History (Changelog):** Show that you maintain the tool.
    - _v1.0:_ Initial release.
    - _v1.1:_ Added "Last Reboot Time" because users often say they rebooted when they only turned the monitor off. (This shows you understand real-world user behavior!)
5. ✅**GitHub Badges:** Add badges for "License: MIT" or "PowerShell: 5.1+" at the top of your README for a polished, professional look.

### In a real job, this "small helper" solves three major pain points:

1. Accuracy: You don't have to worry about a user misreading a serial number or a complex IP address.
2. Speed: You skip the 5-minute "How do I find my settings?" conversation and get straight to fixing the problem.
3. **Documentation: You have a perfectly formatted text file to attach to your Spiceworks or Jira ticket, showing your manager that your work is thorough.**

#### How to frame this in your portfolio:

Instead of calling it a "small script," call it a "Triage Optimization Tool."

Explain that as a 1st Level Support professional, your goal is to:

- Minimize "Talk-Time": Get the data instantly.
- Empower the User: Give them a "one-click" way to help you.
- Ensure Data Integrity: No more typos in the asset management system.
