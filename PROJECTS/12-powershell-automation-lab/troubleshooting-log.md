# Troubleshooting Log – IT-Diagnostic-Tool

This document chronicles the sequential testing phases and technical challenges encountered during the development of the IT-Diagnostic-Tool project.

The purpose of this log is to demonstrate how the utility evolved from a baseline configuration script into a fully validated, user-friendly desktop workflow—capturing how deployment obstacles like directory redirection, script syntax restrictions, empty data streams, and stale system tracking records were systematically isolated and resolved.

---

## 1. Troubleshooting Summary


| Functional Area | Technical Issue | Operational Outcome |
|---|---|---|
| **Output Path Handling** | Target reports were prone to directory path redirection conflicts caused by cloud-synced OneDrive configurations. | Implemented execution-relative directory tracking (`BaseDirectory`) to enforce a local save alongside the tool. |
| **Executable Packaging** | The compiled binary package exposed a console-specific syntax restriction during early execution tests. | Refactored internal script quotation parameters to allow stable, error-free standalone execution. |
| **WMI Data Validation** | System metadata reports generated an obsolete, stale McAfee antivirus registration entry from an old installation. | Purged orphaned security infrastructure tracking records from the local operating system to restore data integrity. |
| **Output Buffer Handling** | The tool generated a valid file structure, but the configuration data stream failed to write into the text report. | Restructured the variable output pipeline using explicit data casting (`Out-String`) to eliminate empty log file bugs. |
| **Deployment Scenario** | Validated the utility across varied desktop launching profiles to ensure seamless execution paths for non-technical users. | Confirmed uniform file creation whether executed directly or launched via a standard desktop shortcut link. |
| **Multi-Host Validation** | Needed to verify script execution reliability and output accuracy outside of the primary development workstation. | Conducted environment-agnostic validation testing across secondary and tertiary Windows hosts. |

---

## 2. Chronological Troubleshooting Timeline

### 2.1 Output Location and Desktop / OneDrive Path Confusion

The first operational challenge involved stabilizing the report output location. Early testing revealed that standard target folders were unreliable due to cloud synchronization software intercepting local profile paths.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 1 | `ts-01-static-desktop-path.png` | Implemented an early hardcoded link pointing toward standard system Desktop environments. |
| 2 | `ts-02-active-desktop-path-test.png` | Executed live tests to verify directory write paths and evaluate structural access behaviors. |
| 3 | `ts-03-onedrive-desktop-path-check.png` | Investigated active OneDrive profile-redirection mapping local folders to cloud-synced directories. |
| 4 | `ts-04-report-not-visible.png` | Confirmed the report was successfully generated, but it saved to the cloud-linked OneDrive directory instead of the local machine Desktop. |
| 5 | `ts-05-report-visible-after-path-change.png` | Adjusted the path variables manually to force the report file to appear in the expected local folder layout. |
| 6 | `ts-06-report-invisible-again.png` | Witnessed the file redirecting back to the cloud directory on subsequent runs, proving that profile-based Desktop paths are not reliable. |

**Result:**  
The output strategy needed to avoid depending entirely on local user profile directories. This established the requirement to lock file generation strictly to the application's runtime directory rather than the desktop folder layout.

---

### 2.2 Rebuild Preparation and Script Update

Transitioned into a codebase cleaning phase to prepare updated files for the next structured testing cycle.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 7 | `ts-07-old-exe-deleted.png` | Manually purged legacy, out-of-date binaries from the workspace to prevent deployment mix-ups. |
| 8 | `ts-08-script-updated.png` | Refactored internal variable declarations and updated script parameters for testing. |

**Result:**  
Established an isolated, cleaned system baseline prior to initializing subsequent binary encapsulation tests.

---

### 2.3 EXE / Script Syntax Issue

Converting the interpreted script structure into a managed binary executable exposed file execution restrictions that did not appear in the standard console.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 9 | `ts-09-exe-syntax-error.png` | The compiled executable encountered an unhandled parsing exception post-initialization, causing an immediate crash. |


### Environment Compilation Commands

The following environment commands were executed within the PowerShell console session to manage, verify, and compile the application framework:

1. **Install the compilation module framework globally:**
```powershell
Install-Module -Name ps2exe -Force
```

1. **Install the compilation module scoped to the active user profile to bypass global permission constraints:**
```powershell
Install-Module -Name ps2exe -Scope CurrentUser -Force -AllowClobber -Verbose
```

2. **Verify the module initialized successfully within the active session:**
```powershell
Get-Module -Name ps2exe
```

3. **Compile the raw code script into the destination executable binary package:**
```powershell
Invoke-PS2EXE -InputFile .\it-diagnostic-tool.ps1 -OutputFile .\IT-Diagnostic-Tool.exe -title "IT Support Diagnostic Tool" -iconFile .\icon.ico
```

**Result:**  
This issue proved that converting a script into an executable file requires separate testing. Code syntax errors can behave differently or cause sudden crashes when the tool is run as an `.exe` file rather than inside the standard PowerShell console.

---

### 2.4 Antivirus Output Showed an Old Entry

Workspace validation revealed formatting anomalies within generated configuration logs, calling out security applications that were no longer present.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 10 | `ts-10-antivirus-output-shows-mcafee.png` | The configuration log flagged a legacy, non-existent McAfee installation alongside active baseline system protections. |

**Result:**  
This anomaly triggered an investigation into how local security information maps are registered inside the operating system.

---

### 2.5 Empty Report / Output Writing Issue

Encountered empty data payloads when transmitting compiled system metrics through the text recording pipeline.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 11 | `ts-11-out-string-output-fix.png` | Adjusted text output behaviors to pass complete string representations across script streams via the `Out-String` operator. |
| 12 | `ts-12-empty-report-debugging.png` | Identified that the text report was successfully created but contained 0 KB of data because the text was not writing correctly. |
| 13 | `ts-13-raw-script-test.png` | Tested the raw PowerShell script directly to isolate core script behavior from the executable wrapper variables. |
| 14 | `ts-14-report-content-fixed.png` | Adjusted the output stream handling in the code, the report content is no longer empty and generates correctly. |

**Result:**  
Testing the raw script independently confirmed that the object formatting logic was working properly, allowing compilation verification to proceed.

---

### 2.6 One-Click Executable Workflow Test

Evaluated graphical execution configurations to verify that end-user interactions remain safe, frictionless, and clear.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 15 | `ts-15-exe-run-without-desktop-icon.png` | Validated target utility execution directly from root system pathways without shortcut parameters. |
| 16 | `ts-16-one-click-desktop-shortcut-success.png` | Confirmed execution success via a user-facing desktop link shortcut, confirming streamlined workflow readiness. |

---

### 2.7 Antivirus / SecurityCenter2 Verification

Conducted targeted directory scrubbing to resolve the orphan metadata components observed during the evaluation phase in Section 2.4.

### Administrative WMI Query & Cleanup Strings

To track down, verify, and systematically eliminate the stale antimalware registration records from the system registry cache, the following low-level query commands were executed sequentially:

1. **Query the system infrastructure database using legacy command-line tools to check for ghost registrations:**
```cmd
wmic /namespace:\\root\SecurityCenter2 path AntivirusProduct get displayName
```

2. **Isolate and confirm the specific status of the orphan antimalware component registry:**
```powershell
Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct | Where-Object { \$_.displayName -like "*McAfee*" }
```

3. **Purge the corrupted, orphaned registration record from the system namespace cache to restore output integrity:**
```powershell
Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct | Where-Object { \$_.displayName -like "*McAfee*" } | Remove-CimInstance
```

| Step | Screenshot | Technical Observation |
|---:|---|---|
| 17 | `ts-17-antivirus-check-before.png` | Queried the administrative namespace block directly to intercept real-time security telemetry maps. |
| 18 | `ts-18-mcafee-present-after-restart.png` | Discovered lingering tracking entries persistent across system reboots, despite software removal. |
| 19 | `ts-19-mcafee-wmi-details.png` | Pulled structural object IDs inside `root/SecurityCenter2` to identify orphan metadata components. |
| 20 | `ts-20-mcafee-removed-cmd-check.png` | Ran administrative vendor uninstallation operations to force purge ghost tracking registrations from system memory. |
| 21 | `ts-21-no-mcafee-final-check.png` | Executed final WMI query verification loops to confirm a completely clean, accurate antivirus output profile. |
| 22 | `ts-22-no-mcafee-final-report.png` | Confirmed that the output text document no longer included the obsolete security entries. |

**Result:**  
Instead of making assumptions about the output, the underlying antimalware registration records were investigated directly within the Windows Management Instrumentation (WMI) environment. Once the system clutter was resolved, the final report correctly reflected the actual security status of the machine.

---

### 2.8 Final Null Path Issue and BaseDirectory Fix

Following the security cleanup phase, an execution variable conflict surfaced when running the application wrapper, preventing file location tracking.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 23 | `ts-23-null-path-error.png` | Encountered an unhandled environment variable path mismatch during standalone execution testing. |
| 24 | `ts-24-basedirectory-fix.png` | Integrated dynamic `BaseDirectory` structural calls within the code to force relative tracking boundaries. |

**Result:**  
The final output strategy was permanently moved to execution-relative directory mapping. This successfully resolved the earlier report-location confusion more reliably than depending on profile Desktop folders.

---

### 2.9 Final Successful Result

With both path and stream variables stabilized, the utility successfully recorded and committed the full system metrics payload.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 25 | `ts-25-final-success.png` | Confirmed successful local log generation containing the complete, uncorrupted technical inventory data block. |

**Result:**  
The standalone script environment successfully generated the target configuration report and met all performance criteria.

---

### 2.10 Second Computer Validation

To guarantee deployment resilience and cross-device stability, the finalized tool was deployed onto an independent workstation environment.


| Step | Screenshot | Technical Observation |
|---:|---|---|
| 26 | `ts-26-second-computer-folder-created.png` | Created an isolated directory path on target machine PC3 to test clean deployment behavior. |
| 27 | `ts-27-second-computer-tool-folder.png` | Deployed the application components to the physical test space to ensure independent execution paths. |
| 28 | `ts-28-second-computer-success.png` | Successfully executed the binary on the second computer, generating a flawless, accurate log output. |

**Result:**  
Cross-device testing successfully validated that the utility is completely stable, environment-agnostic, and ready for deployment.

---

## 3. Final Public Decision

The local executable workflow was useful for testing a user-friendly process. A non-technical user should not need to open PowerShell manually during a normal support request.

However, unsigned executables can trigger antivirus, heuristic, or SmartScreen warnings, especially when they collect system and network information.

For this reason, the public GitHub version provides the readable PowerShell script (`it-diagnostic-tool.ps1`) instead of publishing the unsigned executable (`IT-Diagnostic-Tool.exe`).

---

## 4. Key Lessons Learned


| Lesson | Explanation |
|---|---|
| Output location matters | Desktop / OneDrive redirection can misplace files, so the tool was forced to save the report locally in the executable's directory (`BaseDirectory` tracking), even when launched via a desktop shortcut. |
| Executable testing is necessary | Standalone binaries can close instantly upon completion, requiring a `Pause` step to keep the window open so the user can read the success message. |
| Report content must be verified | Document generation requires verification; creating an empty file structure is insufficient without validating the underlying data stream write behaviors. |
| Antivirus data should be verified | Outdated database entries can remain inside operating system tracking namespaces, requiring explicit verification loops to ensure data accuracy. |
| Public artifacts should be transparent | Open-source code blocks maximize trust for portfolio deployment, removing the security concerns associated with running unknown binary downloads. |
| Documentation is part of support quality | README, SOP, KBA, changelog, sample output, and troubleshooting notes make the project more useful and professional. |


---

## ✍️ Screenshot Set Used in This Log ✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️✍️

| New filename | Original filename |
|---|---|
| `ts-00-permission-error.png` | `01-Laptop-Install-Module -Name ps2exe -Force` |
| `ts-01-static-desktop-path.png` | `20-Laptop-changed-output-file-location-local-desctop.png` |
| `ts-02-active-desktop-path-test.png` | `20-Laptop-changed-output-file-location-local-desctop-try-again-and-again-and-again-active-desktop.png` |
| `ts-03-onedrive-desktop-path-check.png` | `20-Laptop-changed-output-file-location-local-desctop-try-again-and-again-and-again-one-drive-desctop-real.png` |
| `ts-04-report-not-visible.png` | `21-Laptop-file-desctop-laptop-invisible.png` |
| `ts-05-report-visible-after-path-change.png` | `22-Laptop-changed-output-file-location-local-desctop-user-can-see.png` |
| `ts-06-report-invisible-again.png` | `23-Laptop-file-desctop-laptop-invisible-again.png` |
| `ts-07-old-exe-deleted.png` | `24-Laptop-deleted-old-exe-file.png` |
| `ts-08-script-updated.png` | `25-Laptop-Update-the-recipe-client-diagnostic_ps1.png` |
| `ts-09-exe-syntax-error.png` | `29-Laptop-exe-crashing-because-syntax-problem.png` |
| `ts-10-antivirus-output-shows-mcafee.png` | `33-Laptop-mcafee-present.png` |
| `ts-11-out-string-output-fix.png` | `34-Laptop-ne-command-line-for-report-out-string.png` |
| `ts-12-empty-report-debugging.png` | `35-Laptop-no-text-in-file-ultimate-script.png` |
| `ts-13-raw-script-test.png` | `37-running-powershell-script.png` |
| `ts-14-report-content-fixed.png` | `38-powershell-success-notpad-report-with-data.png` |
| `ts-15-exe-run-without-desktop-icon.png`| `41-test-with-exe-file-not-desctop-icon-rsult-success.png` |
| `ts-16-one-click-desktop-shortcut-success.png` | `44-Laptop-icon-successfuly-runs-report-data-ok.png` |
| `ts-17-antivirus-check-before.png` | `50-Laptop-antivirus-check.png` |
| `ts-18-mcafee-present-after-restart.png` | `52-Laptop-after-restart-deep-search-mcafee-present.png` |
| `ts-19-mcafee-wmi-details.png` | `54-Laptop-InstanceID-results.png` |
| `ts-20-mcafee-removed-cmd-check.png` | `58-Laptop-cmd-to-find-id-but-no-mcafee.png` |
| `ts-21-no-mcafee-final-check.png` | `59-Laptop-no-mcafee-at all.png` |
| `ts-22-no-mcafee-final-report.png` | `60-Laptop-no-mcafee-in-tech-support-siagnostics.png` |
| `ts-23-null-path-error.png` | `63-Laptop-null-variable.png` |
| `ts-24-basedirectory-fix.png` | `64-Laptop-new-ps1-file.png` |
| `ts-25-final-success.png` | `68-Laptop-success-finaly.png` |
| `ts-26-second-computer-folder-created.png` | `01-PC3-new-folder-on-c.png` |
| `ts-27-second-computer-tool-folder.png` | `02-PC3-diagnostic-tool-in-folder.png` |
| `ts-28-second-computer-success.png` | `03-PC3-diagnostic-successful.png` |
