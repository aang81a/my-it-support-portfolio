## SOP: Deploying and Updating the L1 Diagnostic Tool
Document ID: SOP-IT-001
Version: 1.0
Owner: [Your Name]
Status: Active
------------------------------
## 1. Purpose
The purpose of this SOP is to define the standardized method for using and maintaining the L1 Diagnostic Tool to ensure consistent data collection during remote support sessions.
## 2. Scope
This procedure applies to all 1st Level Support staff and Managed Service Provider (MSP) technicians.
## 3. Procedure: Running the Tool

   1. Distribution: Provide the user with the compressed .zip folder containing Run-Diagnostics.bat and client-diagnostic.ps1.
   2. Instruction: Direct the user to extract the folder to their Desktop.
   3. Execution: Ask the user to double-click Run-Diagnostics.bat.
   * Note: If a "Windows Protected your PC" popup appears, instruct the user to click "More Info" -> "Run anyway."
   4. Collection: Once the diagnostic completes, ask the user to email the TechSupport_Info.txt file (automatically generated on their Desktop) to the support ticket.

## 4. Procedure: Updating the Script
When new hardware is introduced or additional data points (e.g., VPN status) are required:

   1. Test Environment: Open client-diagnostic.ps1 in VS Code on a test machine.
   2. Modification: Add the new property to the $Results hash table.
   * Example: To add Disk Space, add: "Disk Free" = (Get-PSDrive C).Free / 1GB
   3. Verification: Run the script to ensure the .txt output remains readable.
   4. Version Control: Commit the changes to the GitHub Repository with a clear comment (e.g., "Added disk space monitoring").

## 5. Troubleshooting the Tool

| Issue | Potential Cause | Resolution |
|---|---|---|
| Script closes instantly | Files are not in the same folder | Ensure .bat and .ps1 are in the same directory. |
| Permission Denied | Antivirus blocking execution | Temporarily whitelist the script or run as Admin if necessary. |
| Missing IP Address | No active network connection | Verify the user is connected to Wi-Fi or Ethernet. |
ChallengeTechnical Root CauseResolution"Ghost" AntivirusStale WMI registrations left behind by McAfee uninstaller.Used Get-CimInstance to query the live SecurityCenter2 namespace.Vanishing ReportsOneDrive Folder Redirection moved the Desktop path to a cloud-sync folder.Implemented BaseDirectory discovery to keep the report next to the .exe.Empty .txt FilesPowerShell object stream was closing before the buffer was fully written.Applied Out-String and explicit UTF8 encoding to force a clean write.


---

Would you like to rename that folder from 12-bash to 12-powershell-support-tool now so everything is consistent?

