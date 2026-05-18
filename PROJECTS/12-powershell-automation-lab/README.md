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

Technicians often need details such as:

- computer name
- IPv4 address
- hardware serial number for asset or warranty checks
- Windows version
- last reboot time / system uptime
- registered antivirus product

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

## 🚀 Support Workflow

### Public Repository

For this portfolio, the main public artifact is:

`collect-support-info.ps1`

This allows reviewers to inspect the script logic and see exactly which system details are collected.

### Intended Use in 1st Level Support

In a real support environment, the technician would provide an approved runnable version of the tool or guide the user through the company-approved process.

1. A user contacts 1st Level Support with a slow PC, network issue, or unclear system problem.
2. The technician needs basic device information before continuing.
3. Instead of manually asking questions like “What is your computer name?” or “What is your IP address?”, the user runs the approved support information collector.
4. The workflow creates a report named like:

   `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`

5. The user sends the report back to IT Support or attaches it to the support ticket.
6. The technician receives standardized device details without manually asking for each value.

This supports a more efficient and consistent first support interaction.

---

## 🧾 Sample Output

A sanitized sample report is included here:

[`sample-output/TechSupport_Report_sample.txt`](sample-output/TechSupport_Report_sample.txt)

The generated report contains fields such as:

- Date/Time
- Computer Name
- Current User
- IP Address
- Serial Number
- Windows Version
- Last Reboot
- Antivirus

---

## 📸 Screenshots

The main screenshots below show the project concept, local testing, and final validation results.

### Script Overview

![Script overview](screenshots/01-script-overview.png)

### Final Success Validation

![Final success validation](screenshots/04-final-success-validation.png)

### Second Computer Validation

![Second computer validation](screenshots/05-second-computer-validation.png)

### Security Check: No McAfee Entry

![Security check no McAfee](screenshots/06-security-check-no-mcafee.png)

More process screenshots are documented in the [Troubleshooting Log](troubleshooting-log.md).

---

## 🧠 Technical Skills Demonstrated 🧠🧠🧠🧠🧠

- User Experience (UX): Creating a "One-Click" solution for non-tech users. - is missing
- Version control / GitHub: Managed via GitHub. - more simple than "- **Security awareness:** chose to publish the readable `.ps1` source instead of requiring users to run an unsigned `.exe`."
- Windows environment variables - this would not be better than Windows support basics?


- **Automation thinking:** used PowerShell to reduce repetitive manual collection of support-relevant system details.
- **Basic PowerShell exposure:** worked with commands such as `Get-CimInstance`, `Get-NetIPAddress`, `Out-File`, and `Out-String`. -really?
- **Windows support basics:** collected computer name, current user, IP address, serial number, Windows version, last reboot time, and antivirus status.
- **WMI/CIM awareness:** used Windows management queries to retrieve system and antivirus information. - is this telling the same as the previous statement
- **Testing discipline:** tested the workflow locally and on a second Windows computer.
- **Technical documentation:** created a README, SOP, user-facing knowledge base article, changelog, sample output, and troubleshooting log.
- **Security awareness:** decided to publish the readable `.ps1` source instead of requiring users to run an unsigned `.exe`.
- **GitHub portfolio organization:** structured the project with source code, screenshots, sample output, and supporting documentation.

---

## 📂 Links to supporting documents

- [Troubleshooting Log](troubleshooting-log.md)
- [SOP: Support Info Tool](sop-support-info-tool.md)
- [Knowledge Base Article: How to Run the Support Info Tool](kba-how-to-run-support-info-tool.md)
- [Changelog](CHANGELOG.md)
- [Sample Output](sample-output/TechSupport_Report_sample.txt)

---

## 📌 Project Summary - this is a kind of repetition to what nobody has time to read!!!!!!!!!!!!!!

This project is about more than a single PowerShell script.

It shows how a small automation idea can become a complete 1st Level Support workflow: collecting support metadata, testing the workflow, documenting problems, making security-aware publishing decisions, and creating documentation for both technicians and end users.

---

## 🛠️ Key Features 🛠️🛠️🛠️🛠️🛠️🛠️🛠️ - is missing
- **Zero-Install:** Runs directly from a folder or USB drive.
- **Automated Export:** Saves a `TechSupport_Report_yyyyy-mm-dd_hh-mm-ss.txt` to the user's desktop for easy emailing.
- **Technician-Focused Data:** Includes last boot time, serial number, and network details.
- No Admin rights required for basic info.
- Automated file export for easy emailing to the Helpdesk.

---

## Notes - is missing

What I did: "I identified a common bottleneck in support calls—the time spent finding device information."

How I solved it: "I developed a small PowerShell utility that users can run with one click."

The Result: "A standardized text report that can be attached directly to a ticketing system (like Spiceworks or Jira)."
