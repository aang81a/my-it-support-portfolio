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

#### Step 1: Locate the Application
1. Download the IT_Diagnostics.zip folder from the link provided by your IT technician.
2. Right-click the folder and select Extract All..., then choose your Desktop.
3. Open the **new folder** on your Desktop.
4. Locate the file named **IT-Diagnostic-Tool.exe**.

---

#### Step 2: Launch & Close the Application

1. Double-click the **IT-Diagnostic-Tool** to start.

> ℹ️ **Note on System Prompts:** Depending on your local account permissions, a standard Windows security prompt may appear asking for confirmation to execute the file. Click **More info** on the prompt, and select **Run anyway** to allow the diagnostic scan to proceed.


2. A command line window will open and begin collecting system metrics. This process usually completes within 5 to 10 seconds.
3. When the scan concludes, the terminal window will display the following success message:

`
Diagnostic complete. Report saved in the same folder: TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt
Press Enter to continue...:
`

4. Press **Enter** on your keyboard to securely close the window.

---

#### Step 3: Locate & Send the Report

1. Look in the folder on your `Desktop\` for a new file named **TechSupport_Report_YYYY-MM-DD-hh-mmm-ss.txt**. The timestamp in the filename ensures older diagnostic logs are never overwritten.
2. Attach this text file to your support ticket or reply to your technician's email with the file attached.
3. You may delete the application and the text file once the technician confirms they have received the file.

---

### ℹ️ Privacy & Data Security Note

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
