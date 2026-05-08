# 🚀 L1 Support Diagnostic Tool - Practical Application
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Windows](https://img.shields.io/badge/OS-Windows-0078D4?logo=windows&logoColor=white)
![PowerShell](https://img.shields.io/badge/Language-PowerShell-5391FE?logo=powershell&logoColor=white)

**PowerShell-based system information collection for first-level IT support triage.**

A professional PowerShell tool designed for IT support to instantly collect crucial system data and save time during triage. The script gathers information like computer name, IP address, disk space, and OS version, saving it to a file on the user's desktop.

---

## 📖 Project Overview
This project provides a PowerShell-based diagnostic tool designed to streamline 1st-level IT support triage. By allowing non-technical users to generate a comprehensive system report with a single click, it significantly reduces initial troubleshooting time and ensures data accuracy in support tickets.

---

## Project Goals
The primary goal of this tool is to **optimize triage efficiency**. By automating the collection of system details (IP, Serial, Uptime), the technician can skip manual data entry. This is designed to **positively impact MTTR** (Mean Time to Resolution) by allowing the support session to begin with all necessary data already at hand.

---

## ❓ The Problem
In 1st-level support, valuable time is often lost guiding users through manual steps to find critical information like:
- IPv4 Addresses
- Hardware Serial Numbers (for warranty/asset tracking)
- System Uptime (to check if they actually rebooted)

---

## ✅ The Solution
A lightweight PowerShell script bundled with a batch file launcher that:
1.  **Bypasses Windows Execution Policies** to run on standard user accounts.
2.  **Collects real-time data** via CIM/WMI instances.
3.  **Outputs a clean report** to the console and a local `.txt` file.

---

## 🛠️ Key Features
- **Zero-Install:** Runs directly from a folder or USB drive.
- **Automated Export:** Saves a `TechSupport_Info.txt` to the user's desktop for easy emailing.
- **Technician-Focused Data:** Includes last boot time, serial number, and network details.

---

## 🚀 How to Use

**User Guide:**

1.  Download the `Run-Diagnostics.bat` and `Get-Info.ps1` files.
2.  Place both in the same folder.
3.  Double-click `Run-Diagnostics.bat`.
4.  Send the resulting text file to the IT Helpdesk!


**How I use this in Support:**
 
1. When a user calls with a "slow PC" or "network issue," I send them the `IT-Diagnostics.zip`.
1. When a user calls the 1st level helpdesk, the first 5 minutes are often wasted asking: _"What is your computer name?"_ or _"What is your IP address?"_
2. A script that the user can run with one click to gather all necessary info for the technician.
3. The user runs the tool and emails me the `.txt` file.
4. I immediately see their **IP address** (to start a remote session) and their **Last Reboot time** (to see if a restart is needed).
5. This reduces the "Initial Triage" phase by roughly 5 minutes.

---

## 📸 Screenshots
![Diagnostic Output Example](12-powershell-automation-lab/screenshots
/01.png)

*(Pro Tip: Add a clear screenshot showing the green success text in the terminal)*

---

## 🧠 Technical Skills Demonstrated
- **Automation:** PowerShell scripting and batch automation.
- **System Administration:** Interfacing with Windows system objects (WMI/CIM).
- **ITSM Efficiency:** Focus on reducing Mean-Time-To-Resolution (MTTR).

---

## Notes

What I did: "I identified a common bottleneck in support calls—the time spent finding device information."

How I solved it: "I developed a small PowerShell utility that users can run with one click."

The Result: "A standardized text report that can be attached directly to a ticketing system (like Spiceworks or Jira)."

### The workflow

- Preparation: I identified that manual data collection slows down remote sessions.
- Implementation: I developed a PowerShell script that pulls BIOS serial numbers, network data, and system uptime.
- Deployment: I converted the script into a .bat or shortcut that a user can run without needing admin rights.
- Result: This saves the technician ~3-5 minutes per call and ensures the documentation (Ticket) has 100% accurate system details.

### To make this "Gold," I thought about Security & Execution Policy.
- The Problem: By default, Windows blocks PowerShell scripts.
- The Pro Solution: I would run the script using this bypass command:

`PowerShell.exe -ExecutionPolicy Bypass -File .\Get-Info.ps1`

### What to put in your Portfolio (Visuals):
- Screenshot of the Code: Use a "Dark Mode" editor like VS Code (it looks professional).
- Screenshot of the Output: Show the green text in the blue PowerShell window.
- Screenshot of the .txt file: Show the result on a desktop.
- Pro Tip: If you put this on GitHub, mention in your CV: "Familiar with Git/GitHub for version control of support scripts."
