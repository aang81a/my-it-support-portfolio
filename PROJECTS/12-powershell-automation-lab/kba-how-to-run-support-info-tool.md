## KBA: How to Run the IT Diagnostic Tool

<img src="screenshots/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo" valign="middle"> | *Internal Knowledge Base Article*


**Document ID:** `KBA-1001`  
**Category:** Internal IT Support / Desktop Troubleshooting  
**Target Audience:** All Employees (Non-Technical)  
**Last Updated:** May 2026 

---

### Overview
To help IT Support understand your device faster, you may be asked to run the Support Info Tool during an active support request. 

The tool automatically generates a lightweight text report containing basic technical information about your computer. This empowers you to quickly provide the exact data our technicians need to diagnose and resolve your issue:

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

### Before You Start
* Please use this tool **only** when explicitly instructed by an IT Support technician.
* Do not download or run diagnostic utilities from unverified external sources. In an enterprise environment, only utilize the approved tools provided through official TechLog Solutions channels.

---

# <img src="screenshots/shortcut.png" width="280" alt="Shortcut" valign="middle">



### Step 1: Find and Open the Tool
The Support Info Tool is deployed to your workstation and can be accessed in one of two ways:
1. **Desktop Shortcut:** Locate the shortcut icon labeled **IT-Diagnostic Tool** on your main desktop screen.
2. **Local Folder:** Open your file manager and navigate to the local deployment directory. 

*If you cannot locate the tool or shortcut on your device, please contact the helpdesk for assistance before proceeding.*

---

### Step 2: Run the Application
1. Double-click either the **IT-Diagnostic Tool** desktop shortcut or the local executable file (**IT-Diagnostic Tool.exe**).

> ℹ️ **Note on System Prompts:** Depending on your local account permissions, a standard Windows security prompt may appear asking for confirmation to execute the file. Click **More info** on the prompt, and select **Run anyway** to allow the diagnostic scan to proceed.

2. A black command line window will open and begin collecting system metrics. This process usually completes within 5 to 10 seconds.
3. When the scan concludes, the terminal window will display the following success message:

`
Diagnostic complete. Report saved in the same folder: TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt
Press Enter to continue...:
`

4. Press **Enter** on your keyboard to securely close the window.

---

### Step 3: Locate & Send the Report
1. Look in the folder on your `Desktop\` or in `C:\Public\IT_Tools\IT_Diagnostic_Tool\` for a new file named **TechSupport_Report_YYYY-MM-DD-hh-mmm-ss.txt**. The timestamp in the filename ensures older diagnostic logs are never overwritten.
2. Attach this text file to your support ticket or reply to your technician's email with the file attached.
3. You may delete the text file once the technician confirms they have received it.

---

### ⚠️ Privacy & Data Security Note

This tool does not access your personal files, photos, or passwords. It only looks at system settings like your computer's name and its connection to our office network.

TechLog Solutions prioritizes employee data privacy. This utility is strictly a configuration reader:
* **Collected Data:** The report only logs baseline system variables including computer name, active user, local IP address, device serial number, Windows version, uptime/last reboot time, and active antivirus status.
* **Prohibited Access:** The tool **cannot** access personal files, photos, browser history, emails, saved passwords, or network traffic.
* **System Safety:** This script runs read-only commands. It does not modify system settings, delete application data, or alter local security parameters.

### Troubleshooting
If the command window fails to open, no text file appears after pressing Enter, or you are uncertain which file to attach, stop the process and contact IT Support directly. Do not attempt to modify system directories or local registry files manually.
