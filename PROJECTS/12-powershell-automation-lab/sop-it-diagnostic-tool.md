<img src="screenshots/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo" valign="middle"> | *Internal IT Standard Operating Procedure*

**Document ID:** SOP-IT-001  
**Version:** 1.0  
**Owner:** TechLog Solutions IT
**Status:** Active  

---

## SOP: Using and Maintaining the IT-Diagnostic-Tool

---

### 1. Purpose

The purpose of this SOP is to define a standardized method for using and maintaining the 1st Level Support Metadata Collector.

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

3. **Modify the script carefully**  
   Add only the required data point.

4. **Test the script locally**  
   Run the script and confirm that the report is created successfully.

5. **Verify report readability**  
   Open the generated `.txt` file and check that the content is readable and correctly formatted.

6. **Test before publishing changes**  
   Validate the updated script on a test device before using it in a support workflow.

7. **Document the change**  
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


### 6. Troubleshooting the Tool


| Issue | Possible Cause | Resolution |
|---|---|---|
| User cannot find the report file | Executable was run from a protected or deep network directory | Instruct the user to check the exact directory where the tool was executed, as the script forces a zero-desktop persistence local save. |
| Report file is completely empty | Inbound streaming block or write permission error | Ensure the local user execution profile has standard write permissions to the execution directory. |
| Missing local IP address | No active network interfaces or active loopback override | Verify physical Ethernet connection or Wi-Fi authentication status on the client device. |
| Unexpected antivirus entry | Stale WMI registration records inside SecurityCenter2 | Cross-reference script output manually against the active Windows Security app layout. |
| Executable triggers SmartScreen / AV | Unsigned binary package compiled from raw .ps1 script | Explain to the user that this is an expected security layout behavior. Instruct them to utilize the KBA to select "Run anyway." |
| Terminal window closes instantly | Missing standard pause parameters at script conclusion | Ensure the final line of code contains the native `Pause` or `Read-Host` string command. |


---

### 7. Data Handling Notes

The report is intended for support use only.

The tool collects basic support-relevant system details. It should not collect passwords, personal documents, browser data, photos, or other private user files.

Reports should be handled according to the company’s internal ticketing, privacy, and data-retention rules.
