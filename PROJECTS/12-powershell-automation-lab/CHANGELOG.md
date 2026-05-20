# Changelog

All notable changes to this project are documented in this file.

---

## 2026-05-08

### Added
- **Timestamped Filenames:** Added `yyyy-MM-dd_HH-mm-ss` format to report filenames to prevent overwriting during repeated diagnostic runs.
- **Portability Test:** Successfully validated binary execution on a clean Windows 10 environment (C:\ root).

### Fixed
- **Report Location Confusion:** Resolved the final path issue where reports were lost in OneDrive-synced desktops by implementing `BaseDirectory` discovery inside `it-diagnostic-tool.ps1`.
- **Output Location:** Confirmed that the final report was created in the expected folder layout.
- **"Working Directory" Conflict:** Reverted to `BaseDirectory` saving inside `it-diagnostic-tool.ps1` to ensure 100% reliability across different Windows environments.

---

## 2026-05-07 (Initial Release)

- **Initial Script:** Created the initial PowerShell metadata collection script.
- **Core Metadata Collection:**
   Added collection of basic support details:
     - date / time
     - computer name
     - current user
     - IP address
     - serial number
     - Windows version
     - last reboot time
     - antivirus

- **One-Click Workflow:** Started local testing of the one-click executable workflow.

### Added
- **Antivirus Detection:** Automated WMI query to identify active security software, defaulting to Windows Defender if none are found.
- **Desktop Shortcut:** Tested the executable workflow with and without a desktop shortcut.
- **Output Location:** Tested different output-location strategies during local executable testing.
- **Report Export:** Added `.txt` report output for support documentation.

### Changed
- **Output Reliability:** Implemented `Out-String` and explicit UTF-8 encoding to prevent empty or corrupted report files.
- **Desktop / OneDrive Pathing:** Investigated Desktop and OneDrive path behaviour when saving generated reports.


### Fixed
- **Stale Antivirus Entry:** Investigated a stale security software entry from an old installation and verified the final antivirus output again.
- **Output Integrity:** Fixed empty report output bug by using `Out-String` and explicit UTF-8 encoding.
- **Session Flash Issue:** The command window closed too quickly after execution, so a `Pause` step was kept to let the user read the completion message.
- **Report Location Confusion:** The report location was confusing when Desktop / OneDrive redirection was involved, so the output strategy was changed to save the report next to the executable file.


This shows the code-level fix direction: using Out-String / output handling.
ts-11-out-string-output-fix.png ← 34-Laptop-ne-command-line-for-report-out-string.png

This shows the Empty Report Bug:
Then the proof that it worked is:
ts-14-report-content-fixed.png ← 38-powershell-success-notpad-report-with-data.png
