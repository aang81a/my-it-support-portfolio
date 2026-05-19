# Knowledge Base Article: How to Run the Support Info Tool

**Document ID:** KB-1001  
**Category:** Internal IT Support / Desktop Troubleshooting  
**Audience:** All Employees  
**Last Updated:** May 2026  

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

## Quick Process Overview

| Step | Action |
|---:|---|
| 1 | Find the desktop shortcut or the executable file in the local folder. |
| 2 | Double-click the desktop shortcut or run the executable file. |
| 3 | Wait until the report is created in the same local folder. |
| 4 | Send `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt` to IT Support. |

---

## Before You Start

Please use this tool only when instructed by IT Support.

Do not download or run support tools from unknown sources. In a real company environment, only use the approved tool or process provided by your IT department.

---

---

### Step 1: Find and Open the Tool
To make the process as straightforward as possible, IT has mapped this utility to a user-friendly desktop shortcut. The tool can be accessed in one of two ways:

1. **Desktop Shortcut:** Locate the shortcut icon labeled **Support Info Tool** on your main desktop screen.
2. **Local Folder:** Open your file manager and navigate to the local system directory where the backend application executable, named **IT-Diagnostic Tool.exe**, is stored.

*If you cannot locate the shortcut or the folder on your device, please contact the helpdesk for assistance before proceeding.*

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

## Privacy Note

This tool only collects basic support-relevant system information and writes it to a text file.

It does not change system settings, delete anything, collect passwords, or modify security settings.

The tool does not access your personal files, photos, browser history, emails, or passwords.

---

## If Something Does Not Work

If no report file appears, or if you are unsure what to send, contact IT Support and tell them what happened.

Do not try to change system settings yourself unless IT Support asks you to do so.
