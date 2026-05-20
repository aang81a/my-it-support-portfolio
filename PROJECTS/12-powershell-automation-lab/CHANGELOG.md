# Changelog

All notable changes made during the development of this project are documented in this file.

---

## 2026-05-08

### Added
- **Timestamped Filenames:** Added `yyyy-MM-dd_HH-mm-ss` format to report filenames to prevent overwriting older reports during repeated runs.
- **Portability Test:** Successfully tested script execution on an independent, clean Windows 10 environment (C:\ root).

### Fixed
- **Report Location Confusion:** Resolved path redirection issues where reports were lost in OneDrive-synced desktops by implementing `BaseDirectory` discovery inside `it-diagnostic-tool.ps1`.
- **Output Location:** Confirmed that the final report was created in the expected folder layout.
- **"Working Directory" Conflict:** Reverted to `BaseDirectory` saving inside `it-diagnostic-tool.ps1` to ensure 100% reliability across different Windows environments.

---

## 2026-05-07 (Initial Release)

- **Initial Script:** Created the initial PowerShell metadata collection script.
- **Core System Info Gathering:** Created the initial PowerShell script to automatically check basic details from the start: date/time, computer name, current user, IP address, serial number, Windows version, last reboot time, and antivirus status.
- **One-Click Workflow:** Started local testing of the one-click executable workflow.

### Added
- **Persistent Console Logging:** Integrated explicit `.txt` report file writing to prevent the terminal window from automatically closing and disappearing after execution.
- **Desktop Shortcut:** Tested the executable workflow with and without a desktop shortcut icon.
- **Output Location Testing:** Tested different output-location strategies during local executable testing.

### Changed
- **Desktop / OneDrive Pathing:** Investigated Desktop and OneDrive path behavior when saving generated reports.

### Fixed
- **Stale Antivirus Entry:** Investigated a stale security software entry from an old installation and verified the final antivirus output again.
- **Output Integrity:** Fixed empty report output bug by using `Out-String` and explicit UTF-8 encoding.
- **Session Flash Issue:** The command window closed too quickly after execution, so a standard `Pause` step was kept to let the user read the completion message before the window closes.
- **Report Location Confusion:** The report location was confusing when Desktop / OneDrive redirection was involved, so the output strategy was changed to save the report next to the executable file.
