# Troubleshooting Log – IT-Diagnostic-Tool
---

This document chronicles the sequential testing phases and technical challenges encountered during the development of the IT-Diagnostic-Tool project.

The purpose of this log is to show how the utility evolved from a baseline configuration script into a tested, fully validated, user-friendly desktop workflow, capturing how issues such as Desktop path ambiguity, script syntax errors, empty report output, and stale antivirus entries were isolated and resolved.

---

## 1. Troubleshooting Summary

| Functional Area | Technical Issue | Operational Outcome |
|---|---|---|
| **Desktop Output Path** | Saving directly to Desktop created location ambiguity in a Windows/OneDrive setup. | The output strategy was later changed so the report is saved next to the executable. |
| **Rebuild Preparation** | The `.ps1` script was revised, so the previous `.exe` no longer represented the current script version. | The previous executable was removed before compiling a new executable version. |
| **Executable Packaging** | The compiled executable exposed a syntax/quoting issue during testing. | The script was corrected and the executable workflow was tested again. |
| **Output Writing** | The report file was created, but the report content was empty during one test phase. | Output stream handling was adjusted using `Out-String` and explicit UTF-8 encoding. |
| **One-Click Workflow** | The workflow needed to be tested both directly and through a desktop shortcut. | The executable workflow was validated with and without a desktop shortcut. |
| **Antivirus Verification** | The report showed a stale McAfee entry from an old installation. | Windows antivirus reporting checks and vendor cleanup/removal steps were used, then the final report was verified again. |
| **Final Output Path** | A later null path issue appeared during executable testing. | `BaseDirectory` was used so the report is saved next to the running executable. |
| **Local Final Validation** | The final local version needed to confirm full report generation. | The final executable generated the expected report output. |
| **Second Computer Validation** | The tool needed to be tested outside the original laptop environment. | The workflow was validated on a second Windows computer. |

---

## 2. Chronological Troubleshooting Timeline

### 2.1 Desktop Output Path Investigation

The first operational challenge involved locating the generated report after execution. During early testing, the report was expected on the visible Desktop view, but it was not shown there. The output path was then checked and adjusted during testing to understand where the report was actually being saved.

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 1 | [`ts-01-static-desktop-path.png`](screenshots/ts-01-static-desktop-path.png)<br><img src="screenshots/ts-01-static-desktop-path.png" alt="Early static desktop path test" width="350"> | Tested an early Desktop-based output path. |
| 2 | [`ts-02-active-desktop-path-test.png`](screenshots/ts-02-active-desktop-path-test.png)<br><img src="screenshots/ts-02-active-desktop-path-test.png" alt="Active desktop path test" width="350"> | Checked the active Desktop path used during report generation. |
| 3 | [`ts-03-onedrive-desktop-path-check.png`](screenshots/ts-03-onedrive-desktop-path-check.png)<br><img src="screenshots/ts-03-onedrive-desktop-path-check.png" alt="Desktop and OneDrive path check" width="350"> | Investigated how the script handled Desktop / OneDrive path behaviour. |
| 4 | [`ts-04-report-invisible-on-desktop.png`](screenshots/ts-04-report-invisible-on-desktop.png)<br><img src="screenshots/ts-04-report-invisible-on-desktop.png" alt="Report not visible on expected Desktop view" width="350"> | The report was expected on the visible Desktop view, but it was not shown there after execution. |
| 5 | [`ts-05-report-visible-after-path-change.png`](screenshots/ts-05-report-visible-after-path-change.png)<br><img src="screenshots/ts-05-report-visible-after-path-change.png" alt="Output path logic adjusted during testing" width="350"> | The output path logic was adjusted during testing to handle Desktop / OneDrive path behaviour more explicitly. |
| 6 | [`ts-06-report-not-visible-found.png`](screenshots/ts-06-report-not-visible-found.png)<br><img src="screenshots/ts-06-report-not-visible-found.png" alt="Report found in local Desktop folder" width="350"> | The generated report was later found in the local Desktop folder, confirming that report creation had worked. |

**Result:**  
The report generation worked, but saving directly to “Desktop” created location ambiguity in this Windows/OneDrive setup. This led to the later decision to save the report next to the executable instead of relying on a Desktop path.

---

### 2.2 Rebuild Preparation and Script Update

After the first output-location issue, the PowerShell script was revised. Because the executable is compiled from the `.ps1` file, the previous `.exe` was removed before creating a new executable version from the updated script.

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 7 | [`ts-07-old-exe-deleted.png`](screenshots/ts-07-old-exe-deleted.png)<br><img src="screenshots/ts-07-old-exe-deleted.png" alt="Previous executable deleted before recompilation" width="350"> | Removed the previous executable to avoid testing a compiled version that no longer matched the updated `.ps1` script. |
| 8 | [`ts-08-script-updated.png`](screenshots/ts-08-script-updated.png)<br><img src="screenshots/ts-08-script-updated.png" alt="PowerShell script updated before recompilation" width="350"> | Revised the PowerShell script after the output-location issue before compiling a new executable version. |

**Result:**  
The executable test could continue with a newly compiled version based on the updated script.

---

### 2.3 EXE / Script Syntax Issue

After the script was revised and compiled again, the executable did not run successfully. The test showed that the script still contained a syntax/quoting issue that needed to be corrected before the executable workflow could continue.

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 9 | [`ts-09-exe-syntax-error.png`](screenshots/ts-09-exe-syntax-error.png)<br><img src="screenshots/ts-09-exe-syntax-error.png" alt="Executable syntax error during testing" width="350"> | The executable failed during testing because the script contained a syntax/quoting issue. |

### ⚙️ Compilation Commands Used

The following commands were used during local testing to install PS2EXE and compile the PowerShell script into an executable file.

| Step | Purpose | Command |
|---:|---|---|
| 1 | Install PS2EXE for the current user | `Install-Module -Name ps2exe -Scope CurrentUser -Force -AllowClobber -Verbose` |
| 2 | Verify that the module is available | `Get-Module -Name ps2exe` |
| 3 | Compile the PowerShell script into an executable file | `Invoke-PS2EXE -InputFile .\it-diagnostic-tool.ps1 -OutputFile .\IT-Diagnostic-Tool.exe` |

**Result:**  
The test confirmed that the executable needed to be validated separately from the raw `.ps1` script. After packaging, script issues can become visible during executable testing.

---

### 2.4 Empty Report / Output Writing Issue

Encountered empty data payloads when transmitting compiled system metrics through the text recording pipeline.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 11 | [`ts-11-out-string-output-fix.png`](screenshots/ts-11-out-string-output-fix.png)<br><img src="screenshots/ts-11-out-string-output-fix.png" alt="Out-String output handling adjustment" width="350"> | Adjusted text output behaviors to pass complete string representations across script streams via the `Out-String` operator. |
| 12 | [`ts-12-empty-report-debugging.png`](screenshots/ts-12-empty-report-debugging.png)<br><img src="screenshots/ts-12-empty-report-debugging.png" alt="Empty report file during debugging" width="420"> | Identified that the text report was successfully created but contained 0 KB of data because the text was not writing correctly. |
| 13 | [`ts-13-raw-script-test.png`](screenshots/ts-13-raw-script-test.png)<br><img src="screenshots/ts-13-raw-script-test.png" alt="Raw PowerShell script test" width="350"> | Tested the raw PowerShell script directly to isolate core script behavior from the executable wrapper variables. |
| 14 | [`ts-14-report-content-fixed.png`](screenshots/ts-14-report-content-fixed.png)<br><img src="screenshots/ts-14-report-content-fixed.png" alt="Report content generated correctly after output fix" width="350"> | Adjusted the output stream handling in the code; the report content was no longer empty and generated correctly. |

**Result:**  
Testing the raw script independently confirmed that the object formatting logic was working properly, allowing compilation verification to proceed.

---

### 2.5 One-Click Executable Workflow Test

Evaluated graphical execution configurations to verify that end-user interactions remain safe, frictionless, and clear.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 15 | [`ts-15-exe-run-without-desktop-icon.png`](screenshots/ts-15-exe-run-without-desktop-icon.png)<br><img src="screenshots/ts-15-exe-run-without-desktop-icon.png" alt="Executable run without desktop shortcut" width="350"> | Validated target utility execution directly from root system pathways without shortcut parameters. |
| 16 | [`ts-16-one-click-desktop-shortcut-success.png`](screenshots/ts-16-one-click-desktop-shortcut-success.png)<br><img src="screenshots/ts-16-one-click-desktop-shortcut-success.png" alt="Executable run through desktop shortcut" width="350"> | Confirmed execution success via a user-facing desktop link shortcut, confirming streamlined workflow readiness. |

---

### 2.6 Antivirus Output and Verification

A stale McAfee entry first appeared during report testing. For readability, the initial finding and the later verification steps are documented together in this section.

During testing, the generated report showed a McAfee entry from an old installation, although McAfee was no longer actively installed. This triggered a separate verification step to compare the report output with what Windows reported about installed antivirus products.

The following commands were used to compare the report output with what Windows reported about antivirus products.

| Step | Purpose | Command |
|---:|---|---|
| 1 | Check antivirus products reported by Windows using CMD | `wmic /namespace:\\root\SecurityCenter2 path AntivirusProduct get displayName` |
| 2 | Check antivirus products reported by Windows using PowerShell | `Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct \| Select-Object displayName` |

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 10 | [`ts-10-antivirus-output-shows-mcafee.png`](screenshots/ts-10-antivirus-output-shows-mcafee.png)<br><img src="screenshots/ts-10-antivirus-output-shows-mcafee.png" alt="Report output showing McAfee entry" width="350"> | The generated report showed `Malwarebytes`, `Windows Defender`, and `McAfee VirusScan` in the antivirus field. |
| 17 | [`ts-17-antivirus-check-before.png`](screenshots/ts-17-antivirus-check-before.png)<br><img src="screenshots/ts-17-antivirus-check-before.png" alt="PowerShell antivirus check showing McAfee entry" width="350"> | A PowerShell check showed `Malwarebytes`, `Windows Defender`, and `McAfee VirusScan`, with product state values. |
| 18 | [`ts-18-mcafee-present-after-restart.png`](screenshots/ts-18-mcafee-present-after-restart.png)<br><img src="screenshots/ts-18-mcafee-present-after-restart.png" alt="PowerShell antivirus check still showing McAfee" width="350"> | A second PowerShell check still showed `McAfee VirusScan` together with `Malwarebytes` and `Windows Defender`. |
| 19 | [`ts-19-mcafee-wmi-details.png`](screenshots/ts-19-mcafee-wmi-details.png)<br><img src="screenshots/ts-19-mcafee-wmi-details.png" alt="Detailed antivirus product entries in SecurityCenter2" width="350"> | A detailed `SecurityCenter2` query showed antivirus product entries, including paths and product state values for Malwarebytes, Windows Defender, and McAfee VirusScan. |
| 20 | [`ts-20-mcafee-removed-cmd-check.png`](screenshots/ts-20-mcafee-removed-cmd-check.png)<br><img src="screenshots/ts-20-mcafee-removed-cmd-check.png" alt="CMD antivirus check without McAfee entry" width="350"> | A CMD check after cleanup/removal steps showed only `Malwarebytes` and `Windows Defender`. |
| 21 | [`ts-21-no-mcafee-final-check.png`](screenshots/ts-21-no-mcafee-final-check.png)<br><img src="screenshots/ts-21-no-mcafee-final-check.png" alt="CMD and PowerShell antivirus checks without McAfee entry" width="350"> | CMD and PowerShell checks both showed only `Malwarebytes` and `Windows Defender`, confirming that the old McAfee entry was no longer reported. |
| 22 | [`ts-22-no-mcafee-final-report.png`](screenshots/ts-22-no-mcafee-final-report.png)<br><img src="screenshots/ts-22-no-mcafee-final-report.png" alt="Final report opened without stale McAfee entry" width="350"> | The final generated report opened successfully and no longer showed the stale McAfee entry. |

**Result:**  
The stale antivirus entry was verified instead of assumed. After vendor cleanup/removal steps and repeated checks, the final report no longer showed the old McAfee entry.

---

### 2.7 Final Null Path Issue and BaseDirectory Fix

The earlier Desktop-output tests showed that saving reports to Desktop could create location ambiguity. During final executable testing, a separate null path issue appeared. The final output strategy was therefore changed to use `BaseDirectory`, saving the report next to the running executable.

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 23 | [`ts-23-null-path-error.png`](screenshots/ts-23-null-path-error.png)<br><img src="screenshots/ts-23-null-path-error.png" alt="Null path issue during executable testing" width="350"> | Encountered an unhandled environment variable path mismatch during standalone execution testing. |
| 24 | [`ts-24-basedirectory-fix.png`](screenshots/ts-24-basedirectory-fix.png)<br><img src="screenshots/ts-24-basedirectory-fix.png" alt="BaseDirectory output path fix" width="350"> | Integrated dynamic `BaseDirectory` structural calls within the code to force relative tracking boundaries. |

**Result:**  
The final output strategy was permanently moved to execution-relative directory mapping. This successfully resolved the earlier report-location confusion more reliably than depending on profile Desktop folders.

---

### 2.8 Final Successful Result

With both path and stream variables stabilized, the utility successfully recorded and committed the full system metrics payload.

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 25 | [`ts-25-final-success.png`](screenshots/ts-25-final-success.png)<br><img src="screenshots/ts-25-final-success.png" alt="Final successful local report generation" width="350"> | Confirmed successful local log generation containing the complete, uncorrupted technical inventory data block. |

**Result:**  
The standalone executable successfully generated the target report and met the expected test outcome.

---

### 2.9 Second Computer Validation

To verify that the tool also worked outside the original laptop environment, it was tested on a second Windows computer.

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 26 | [`ts-26-second-computer-folder-created.png`](screenshots/ts-26-second-computer-folder-created.png)<br><img src="screenshots/ts-26-second-computer-folder-created.png" alt="Second computer test folder created" width="350"> | Created a local test folder on PC3 for the validation run. |
| 27 | [`ts-27-second-computer-tool-folder.png`](screenshots/ts-27-second-computer-tool-folder.png)<br><img src="screenshots/ts-27-second-computer-tool-folder.png" alt="Tool files placed in second computer test folder" width="350"> | Placed the tool files in the PC3 test folder before execution. |
| 28 | [`ts-28-second-computer-success.png`](screenshots/ts-28-second-computer-success.png)<br><img src="screenshots/ts-28-second-computer-success.png" alt="Successful validation on second Windows computer" width="350"> | Successfully executed the tool on PC3 and generated the expected report output. |

**Result:**  
The workflow was successfully validated on a second Windows system.

---

## 3. Practical Notes for Future Use

- When testing a PowerShell script as an executable, verify the `.exe` separately from the raw `.ps1` script. A script can behave differently after packaging.

- Keep a visible completion step, such as `Pause`, if the tool is intended to be run by a user through a one-click executable. This gives the user time to read the success message and see where the report was saved.

- Avoid relying only on Desktop paths for report output. On systems where the visible Desktop is managed through OneDrive, a report may be saved correctly to the local Desktop folder but still appear missing from the user’s visible Desktop view. Saving the report next to the executable was the clearer and safer output strategy in this project.

- If antivirus information appears unexpected, compare the report output with what Windows reports and with the actual security tools installed on the device. Old antivirus entries can remain visible after previous installations.

---

## 4. Final Public Decision

The executable workflow was tested locally to validate a user-friendly support process.

Because unsigned executables can trigger antivirus, heuristic, or SmartScreen warnings, the public GitHub version provides the readable PowerShell script (`it-diagnostic-tool.ps1`) instead of the unsigned executable (`IT-Diagnostic-Tool.exe`).
