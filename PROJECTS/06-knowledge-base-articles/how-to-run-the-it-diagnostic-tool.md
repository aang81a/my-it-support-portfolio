## How to Run the IT Diagnostic Tool

*Knowledge Base Article*

**Article ID:** KB-1001  
**Category:** General Support / Troubleshooting  
**Audience:** End users  
**Last Updated:** May 2026  

---

### Overview

The IT Diagnostic Tool quickly gathers local network and system telemetry to help the IT support team diagnose performance issues. 

---

### Step 1: Locate and Launch the Application
1. Download the IT_Diagnostics.zip folder from the link provided by your IT technician.
2. Right-click the folder and select Extract All..., then choose your Desktop.
3. Open the new folder on your Desktop.
   
or

1. Open your Windows File Explorer (`Win + E`).
2. Navigate to the shared network tools directory:  
   `C:\Public\IT_Tools\`
   
3. Locate the file named **IT-Diagnostic-Tool.exe**
   or
   locate the **IT-Diagnostic-Tool-Shortcut** on your desktop.

4. Double-click the **IT-Diagnostic-Tool** to start.

> ℹ️ **Note on System Prompts:** Depending on your local account permissions, a standard Windows security prompt may appear asking for confirmation to execute the file. Click **More info** on the prompt, and select **Run anyway** to allow the diagnostic scan to proceed.
    
---

## Step 3: Locate & Send the Report

A window will open. Once it says `Diagnostic complete. Report saved in the same folder: TechSupport_Report_YYYY-MM-DD-hh-mmm-ss.txt
Press Enter to continue...`, you can press **Enter** on your keyboard to securely close the window.

1. Look in the folder on your `Desktop\` or in `C:\Public\IT_Tools\IT_Diagnostic_Tool\` for a new file named **TechSupport_Report_YYYY-MM-DD-hh-mmm-ss.txt**. The timestamp in the filename ensures older diagnostic logs are never overwritten.
2. Attach this text file to your support ticket or reply to your technician's email with the file attached.
3. You may delete the text file once the technician confirms they have received it.

---

## ⚠️ Privacy & Data Security Note

* **Collected Data:** The report only logs baseline system variables:
   - Date/Time
   - Computer Name
   - Current User
   - IP Address
   - Serial Number
   - Windows Version
   - Last Reboot
   - Antivirus Product

* **Prohibited Access:** The tool **cannot** access personal files, photos, browser history, emails, saved passwords, or network traffic.
* **System Safety:** This script runs read-only commands. It does not modify system settings, delete application data, or alter local security parameters.
