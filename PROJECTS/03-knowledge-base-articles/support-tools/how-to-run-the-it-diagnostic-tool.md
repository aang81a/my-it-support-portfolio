# How to Run the IT Diagnostic Tool

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Knowledge%20Base%20Article-purple)
![Audience](https://img.shields.io/badge/Audience-End%20Users-lightgrey)
![Tool](https://img.shields.io/badge/Tool-IT%20Diagnostic%20Tool-blue)

---

*Knowledge Base Article*

**Article ID:** `KB-1001`  
**Category:** General Support / Troubleshooting  
**Audience:** End users  
**Last Updated:** May 2026  

---

## Overview

The IT Diagnostic Tool gathers basic local system and network information to help IT Support investigate a support request.

Use this tool only when an IT Support technician asks you to run it.

---

## Step 1: Locate the Application

1. Download the `IT_Diagnostics.zip` folder from the link provided by your IT technician.
2. Right-click the downloaded `.zip` folder and select **Extract All...**
3. Choose your Desktop as the extraction location.
4. Open the new extracted folder on your Desktop.
5. Locate the file named **IT-Diagnostic-Tool.exe**.

---

## Step 2: Launch and Close the Application

1. Double-click **IT-Diagnostic-Tool.exe** to start.

> ℹ️ **Note on System Prompts:** Depending on your local account permissions, a standard Windows security prompt may appear asking for confirmation to execute the file. If this happens, stop and contact IT Support unless your technician has specifically confirmed that the prompt is expected.

2. A command line window will open and begin collecting system information. This process usually completes within 5 to 10 seconds.

3. When the scan concludes, the terminal window will display the following success message:

```text
Diagnostic complete. Report saved in the same folder: TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt
Press Enter to continue...:
```

4. Press **Enter** on your keyboard to close the window.

---

## Step 3: Locate and Send the Report

1. Look in the extracted folder on your Desktop for a new file named **TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt**. The timestamp in the filename ensures older diagnostic reports are not overwritten.
2. Attach this text file to your support ticket or reply to your technician's email with the file attached.
3. You may delete the extracted folder and the text file once the technician confirms they have received the report.

---

## When to Contact IT Support

Contact IT Support if:

- The ZIP file does not download.
- You cannot extract the folder.
- Windows blocks the application.
- The report file is not created.
- You see an error message.

---

## Privacy and Data Security Note

**Collected Data:** The report only logs basic system information:

- Date / Time
- Computer Name
- Current User
- IP Address
- Serial Number
- Windows Version
- Last Reboot
- Antivirus Product

**Prohibited Access:** The tool cannot access personal files, photos, browser history, emails, saved passwords, or network traffic.

**System Safety:** The tool runs read-only commands. It does not modify system settings, delete application data, or change local security settings.
