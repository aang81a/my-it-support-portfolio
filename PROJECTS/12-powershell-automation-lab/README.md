# 🧾 1st Level Support Metadata Collector

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Windows](https://img.shields.io/badge/OS-Windows-0078D4?logo=windows&logoColor=white)
![PowerShell](https://img.shields.io/badge/Language-PowerShell-5391FE?logo=powershell&logoColor=white)

**PowerShell automation for collecting support-relevant system details**

**Tool:** PowerShell

**Project concept:** One-click support metadata collection for 1st Level Support.

**Project evolution:** script → one-click executable workflow → troubleshooting → testing → documentation → published PowerShell version

I developed this project by adapting and enhancing an initial PowerShell metadata collection script into a tested 1st Level Support workflow with local executable packaging and desktop shortcut testing. 
I tested it on multiple Windows systems, documented the troubleshooting process, and wrote both technician-facing and end-user-facing documentation.

---

## 📖 Project Overview

This project presents a one-click support information workflow built around a PowerShell script that collects support-relevant system details quickly and writes them into a standardized report.

In a support situation, technicians often need basic device details before they can continue with troubleshooting or documentation. Instead of asking the user to manually look up details such as the computer name, IP address, serial number, Windows version, last reboot time, or antivirus status, the script creates a standardized text report as part of the support workflow.

During local testing, I packaged the script as a one-click executable and tested it with a desktop shortcut, so a non-technical user would not need to open PowerShell manually.

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

The tool collects support-relevant system details and writes them into a standardized report file:

`TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`

The report can then be shared with the IT technician or used for ticket documentation.

Collected details include:

- computer name
- current user
- IP address
- serial number
- Windows version
- last reboot time
- antivirus status

---

## 🙏 Technical Credits

This project utilizes the [PS2EXE module](https://github.com/MScholtes/PS2EXE) created by Markus Scholtes. I have used this open-source tool to compile my custom PowerShell logic into a user-friendly binary format during local testing.

For public portfolio review, the readable PowerShell source file is provided instead of the unsigned executable.

---

## 🔐 Security & Transparency Note

The user-friendly executable version was tested locally, but it is not published as a downloadable file in this repository.

Unsigned executables created from scripts may trigger heuristic antivirus detections, especially when they collect system and network information.

For transparency and trust, this repository provides the readable PowerShell source script as the main artifact instead of publishing the unsigned `.exe`. The script shows which commands are used and which system details are collected.

In a real support environment, the end user would use only an approved company-provided tool or follow the company-approved support process.

---

## 🔄 Support Workflow

### Public Repository

For this portfolio, the main public artifact is:

`collect-support-info.ps1`

This allows reviewers to inspect the script logic and see exactly which system details are collected.

### Intended Use in 1st Level Support

In a real support environment, the technician would provide an approved runnable version of the tool or guide the user through the company-approved process.

1. A user contacts 1st Level Support with a slow PC, network issue, or unclear system problem.
2. The technician needs basic device information before continuing.
3. Instead of manually asking questions like “What is your computer name?” or “What is your IP address?”, the user runs the approved support information collector.
4. The tool creates a report named like:

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

## 🧠 Technical Skills Demonstrated

- **Automation thinking:** used PowerShell to reduce repetitive manual collection of support-relevant system details.
- **Basic PowerShell exposure:** worked with commands such as `Get-CimInstance`, `Get-NetIPAddress`, `Out-File`, and `Out-String`.
- **Windows support basics:** collected computer name, current user, IP address, serial number, Windows version, last reboot time, and antivirus status.
- **WMI/CIM awareness:** used Windows management queries to retrieve system and antivirus information.
- **Windows path handling:** worked with local folders, output paths, and report file creation during testing.
- **User Experience (UX):** tested a one-click executable and desktop shortcut to make the support workflow easier for non-technical users.
- **Testing discipline:** tested the workflow locally and on a second Windows computer.
- **Technical documentation:** created a README, SOP, user-facing knowledge base article, changelog, sample output, and troubleshooting log.
- **Security awareness:** decided to publish the readable `.ps1` source instead of requiring users to run an unsigned `.exe`.
- **Version control / GitHub:** managed the project in GitHub with source code, screenshots, sample output, and supporting documentation.

---

## ✨ Key Features

- **Support Metadata Collection:** Collects support-relevant system details such as computer name, current user, IP address, serial number, Windows version, last reboot time, and antivirus status.
- **Standardized Report Output:** Creates a report file named like `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`, which can be attached to a support ticket.
- **User-Friendly Workflow Tested:** Local `.exe` packaging and desktop shortcut testing were explored so a non-technical user would not need to open PowerShell manually.
- **Readable Public Source:** The public repository provides the `.ps1` script so reviewers can inspect what the tool collects.
- **No Admin Rights for Basic Data:** The tested system details were collected without requiring administrator access in the test environments.
- **Documentation Package:** Includes technician-facing SOP, user-facing KBA, troubleshooting log, changelog, screenshots, and sample output.

---

## 💼 Business Value

- **Bottleneck identified:** Support calls often lose time when users have to manually find device information.
- **Solution:** The tool collects support-relevant metadata and writes it into a standardized report.
- **Result:** The report can be added to the support ticket as an attachment or used by the technician to document the case more accurately.

---

## 🔗 Links to supporting documents

- [Troubleshooting Log](troubleshooting-log.md)
- [SOP: Support Info Tool](sop-support-info-tool.md)
- [Knowledge Base Article: How to Run the Support Info Tool](kba-how-to-run-support-info-tool.md)
- [Changelog](CHANGELOG.md)
- [Sample Output](sample-output/TechSupport_Report_sample.txt)
