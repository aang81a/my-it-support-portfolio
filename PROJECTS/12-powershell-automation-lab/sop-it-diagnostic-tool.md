# SOP: Using and Maintaining the IT-Diagnostic-Tool
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-SOP-blueviolet)
![Audience](https://img.shields.io/badge/Audience-IT%20Support-lightgrey)

<img src="screenshots/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo" valign="middle"> | *Internal IT Standard Operating Protocol*

**Document ID:** SOP-IT-001  
**Version:** 1.0  
**Owner:** Internal IT Support Administration  
**Category:** IT Support / Desktop Troubleshooting    
**Target Audience:** Internal IT Support Team  
**Status:** Active  
**Last Updated:** May 2026 

---

## Overview

This SOP explains how the IT Diagnostic Tool should be used, maintained, updated, and checked by Internal IT Support.

It defines the tool purpose, usage conditions, update process, verification checklist, troubleshooting guidance, and basic data-handling expectations.

---

### 1. Purpose

The purpose of this SOP is to define a standardized method for using and maintaining the IT Diagnostic Tool.

The tool supports consistent collection of basic device information during support requests and helps technicians document support cases more accurately.

---

### 2. Scope

This procedure applies to 1st Level Support technicians who need to collect basic system details during a support request.

The tool is intended for support information gathering only. It does not replace troubleshooting, remote support, or ticket documentation.

---

### 3. Procedure: Using the Tool

1. **Prepare the approved tool package**  
   Use the company-approved runnable version of the support information collector or the reviewed PowerShell source version.

2. **Provide instructions to the user**  
   Ask the user to run the approved support information collector during the support session.

3. **Generate the report**  
   The tool creates a report file named:

   `TechSupport_Report_yyyy-mm-dd_hh-mm-ss.txt`

4. **Collect the report**  
   Ask the user to send the report back to IT Support or attach it to the support ticket.

5. **Review the report**  
   Check the collected support details, such as:

   - computer name
   - current user
   - IP address
   - serial number
   - Windows version
   - last reboot time
   - registered antivirus product

6. **Continue support work**  
   Use the report to support the next step, such as ticket documentation, network checks, remote support preparation, or escalation.

---

### 4. Procedure: Updating the Script

When new support data points are required, such as disk space, VPN status, or additional network information:

1. **Open the script in a test environment**  
   Open `it-diagnostic-tool.ps1` in VS Code or another text editor.

2. **Modify the script carefully**  
   Add only the required data point.

3. **Test the script locally**  
   Run the script and confirm that the report is created successfully.

4. **Verify report readability**  
   Open the generated `.txt` file and check that the content is readable and correctly formatted.

5. **Test before publishing changes**  
   Validate the updated script on a test device before using it in a support workflow.

6. **Document the change**  
   Update the changelog and commit the change to GitHub with a clear message.

---

### 5. Verification Checklist

Before using an updated version, confirm:

- [ ] The script runs without errors.
- [ ] A report file is created.
- [ ] The report filename includes a timestamp.
- [ ] The report content is readable.
- [ ] The report is saved in the expected location.
- [ ] No unnecessary personal files or passwords are collected.
- [ ] The output matches the expected report format.

---

### 6. Troubleshooting the Tool

| Issue | Possible Cause | Resolution |
|---|---|---|
| Report file is difficult to find | Desktop path or OneDrive redirection causes confusion | Check the folder where the tool was run and confirm the output location. |
| Report file is empty | Output was not written correctly to the text file | Test the script directly and verify output handling. |
| Missing IP address | No active network connection or adapter issue | Confirm the device is connected to Wi-Fi or Ethernet. |
| Unexpected antivirus entry appears | Old or stale antivirus registration may still be present | Verify antivirus status and compare with Windows Security / installed security tools. |
| Executable triggers antivirus warning | Unsigned executable created from a script may trigger heuristic detection | Use the readable PowerShell source for review and only use approved company tools in real environments. |
| Tool closes before user can read the result | Console window closes after execution | Keep a pause/read step so the user can confirm completion. |

---

## 7. Data Handling Notes

The report is intended for support use only.

The tool collects basic support-relevant system details. It should not collect passwords, personal documents, browser data, photos, or other private user files.

Reports should be handled according to the company’s internal ticketing, privacy, and data-retention rules.
