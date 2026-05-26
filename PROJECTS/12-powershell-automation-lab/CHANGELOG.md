# Changelog

All notable changes made during the development of this project are documented in this file.

---

## 2026-05-08

### Added
- **Timestamped Filenames:** Added `yyyy-MM-dd_HH-mm-ss` format to report filenames to prevent overwriting older reports during repeated runs.
- **Portability Test:** Successfully tested the tool on a second independent Windows 10 computer (C:\ root).

### Fixed
- **Report Location Confusion:** Resolved Desktop location ambiguity by implementing `BaseDirectory` discovery inside `it-diagnostic-tool.ps1`, so the report is saved next to the executable.
- **Output Location:** Confirmed that the final report was created in the expected folder layout.
- **"Working Directory" Conflict:** Reverted to `BaseDirectory` saving inside `it-diagnostic-tool.ps1` to make the report location more predictable across different Windows environments.

---

## 2026-05-07 (Initial Release)

- **Initial Script:** Created the initial PowerShell metadata collection script.
- **Core System Info Gathering:** Created the initial PowerShell script to automatically check basic details from the start: date/time, computer name, current user, IP address, serial number, Windows version, last reboot time, and antivirus product output.
- **One-Click Workflow:** Started local testing of the one-click executable workflow.

### Added
- **Report File Output:** Added explicit `.txt` report file writing and kept a `Pause` step so the completion message remains visible before the window closes.
- **Desktop Shortcut:** Tested the executable workflow with and without a desktop shortcut icon.
- **Output Location Testing:** Tested different output-location strategies during local executable testing.

### Changed
- **Desktop / OneDrive Pathing:** Investigated Desktop and OneDrive path behavior when saving generated reports.

### Fixed
- **Stale Antivirus Entry:** Investigated a stale security software entry from an old installation and verified the final antivirus output again.
- **Output Integrity:** Fixed empty report output bug by using `Out-String` and explicit UTF-8 encoding.
- **Session Flash Issue:** The command window closed too quickly after execution, so a standard `Pause` step was kept to let the user read the completion message before the window closes.
- **Report Location Confusion:** The report location was confusing when Desktop / OneDrive redirection was involved, so the output strategy was changed to save the report next to the executable file.
