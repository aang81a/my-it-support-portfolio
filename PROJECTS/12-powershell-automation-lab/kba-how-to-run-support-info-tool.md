# <img src="screenshots/tech-log-solutions-logo.png" width="280" alt="TechLog Solutions Logo" valign="middle">

# <img src="screenshots/tech-log-solutions.png" width="280" alt="TechLog Solutions" valign="middle">

> **INTERNAL IT KNOWLEDGE BASE**


| | |
| :--- | :--- |
| **Document ID:** | `KB-1001` |
| **Category:** | Internal IT Support / Desktop Troubleshooting |
| **Target Audience:** | All Employees (Non-Technical) |
| **Last Updated:** | May 2026 |

---

# Knowledge Base Article: How to Run the Support Info Tool

**Document ID:** KB-1001  
**Category:** Internal IT Support / Desktop Troubleshooting  
**Audience:** All Employees  
**Last Updated:** May 2026  

---

## How to Run the Support Info Tool

### Overview
To help IT Support understand your device faster, you may be asked to run the Support Info Tool during an active support request. 

The tool automatically generates a lightweight text report containing basic technical information about your computer. This empowers you to quickly provide the exact data our technicians need to diagnose and resolve your issue.

---

## Overview

To help IT Support understand your device faster, you may be asked to run the Support Info Tool during a support request.

The tool creates a text report with basic technical information about your computer. This helps you provide the details IT Support needs to understand your device and continue troubleshooting.

The report collects details such as:

- computer name
- IP address
- Windows version
- last reboot time
- antivirus product

---

### Quick Process Overview


| Step | Action |
|---:|---|
| 1 | Find the desktop shortcut or the executable file in the local deployment folder. |
| 2 | Double-click the desktop shortcut or run the executable file directly. |
| 3 | Wait a few seconds until the diagnostic report is generated in the same folder. |
| 4 | Attach and send the final `.txt` file back to your assigned IT Support technician. |

---

## Quick Process Overview

| Step | Action |
|---:|---|
| 1 | Find the desktop shortcut or the executable file in the local folder. |
| 2 | Double-click the desktop shortcut or run the executable file. |
| 3 | Wait until the report is created in the same local folder. |
| 4 | Send `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt` to IT Support. |

---

### Before You Start
* Please use this tool **only** when explicitly instructed by an IT Support technician.
* Do not download or run diagnostic utilities from unverified external sources. In an enterprise environment, only utilize the approved tools provided through official TechLog Solutions channels.

---

## Before You Start

Please use this tool only when instructed by IT Support.

Do not download or run support tools from unknown sources. In a real company environment, only use the approved tool or process provided by your IT department.

---

### Step 1: Find and Open the Tool
The Support Info Tool is deployed to your workstation and can be accessed in one of two ways:
1. **Desktop Shortcut:** Locate the shortcut icon labeled **Support Info Tool** on your main desktop screen.
2. **Local Folder:** Open your file manager and navigate to the local deployment directory. 

*If you cannot locate the tool or shortcut on your device, please contact the helpdesk for assistance before proceeding.*

---

### Step 1: Find and Open the Tool
To make the process as straightforward as possible, IT has mapped this utility to a user-friendly desktop shortcut. The tool can be accessed in one of two ways:

1. **Desktop Shortcut:** Locate the shortcut icon labeled **Support Info Tool** on your main desktop screen.
2. **Local Folder:** Open your file manager and navigate to the local system directory where the backend application executable, named **IT-Diagnostic Tool.exe**, is stored.

*If you cannot locate the shortcut or the folder on your device, please contact the helpdesk for assistance before proceeding.*

---

### Step 2: Run the Diagnostics
1. Double-click either the desktop shortcut or the local executable file (`Support_Info_Tool.exe`).
2. A black command line window will open and begin collecting system metrics. This process usually completes within 5 to 10 seconds.
3. When the scan concludes, the terminal window will display the following success message:

```text
Diagnostic complete. Report saved in the same folder: TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt
Press Enter to continue...:
```
4. Press **Enter** on your keyboard to securely close the window. 

---


### Step 2: Run the Application
1. Double-click either the **Support Info Tool** desktop shortcut or the local executable file (**IT-Diagnostic Tool.exe**).
2. A black command line window will open and begin collecting system metrics. This process usually completes within 5 to 10 seconds.
3. When the scan concludes, the terminal window will display the following success message:

```text
Diagnostic complete. Report saved in the same folder: TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt
Press Enter to continue...:
```
4. Press **Enter** on your keyboard to securely close the window.

---

### Step 3: Locate and Send the Report
* Look inside the folder where the tool was run. You will see a new file named `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`. The timestamp in the filename ensures older diagnostic logs are never overwritten.
* Attach this text file directly to your open support ticket or reply to your technician's email with the file attached.
* Once IT Support confirms receipt of the file, you may safely delete the generated report text file from your system.

---

## Step 3: Find the Report

- Look for a file named `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`.

- The date and time in the filename help prevent older reports from being overwritten.

---

## Step 4: Send the Report to IT Support

- Attach the report file to your support ticket or to the IT Support reply email.

- Send the report back to the technician.

- You may delete the report and the tool after IT Support confirms that they have received the file.

---

## What the Report Contains

The report contains basic technical information such as:

- computer name
- current user
- IP address
- serial number
- Windows version
- last reboot time
- antivirus

---

### Privacy & Data Security Note
TechLog Solutions prioritizes employee data privacy. This utility is strictly a configuration reader:
* **Collected Data:** The report only logs baseline system variables including computer name, active user profile, local IP address, device serial number, Windows version, uptime/last reboot time, and active antivirus status.
* **Prohibited Access:** The tool **cannot** access personal files, photos, browser history, emails, saved passwords, or network traffic.
* **System Safety:** This script runs read-only commands. It does not modify system settings, delete application data, or alter local security parameters.

---

### Troubleshooting
If the command window fails to open, no text file appears after pressing Enter, or you are uncertain which file to attach, stop the process and contact IT Support directly. Do not attempt to modify system directories or local registry files manually.

---

## Privacy Note

This tool only collects basic support-relevant system information and writes it to a text file.

It does not change system settings, delete anything, collect passwords, or modify security settings.

The tool does not access your personal files, photos, browser history, emails, or passwords.

---

## If Something Does Not Work

If no report file appears, or if you are unsure what to send, contact IT Support and tell them what happened.

Do not try to change system settings yourself unless IT Support asks you to do so.
