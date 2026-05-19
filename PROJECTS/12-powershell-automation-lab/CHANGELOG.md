# Changelog

All notable changes to this project are documented in this file.

---

## 2026-05-11

### Added
- **Timestamped Filenames:** Added `yyyy-MM-dd_HH-mm-ss` format to report filenames to prevent overwriting during repeated diagnostic runs.
- **Portability Test:** Successfully validated binary execution on a clean Windows 10 environment (C:\ root).

### Changed
- **Pathing Logic:** Switched to `BaseDirectory` discovery. This ensures the report always generates next to the executable, bypassing OneDrive pathing issues.
- **Report Filename:** Updated the generated report name to `TechSupport_Report_yyyy-MM-dd_HH-mm-ss.txt`.

### Fixed
- **Output Location:** Verified that the final report was created in the expected folder.

---

## 2026-05-09

### Added
- **Report Export:** Added `.txt` report output for support documentation.
- **Antivirus Detection:** Automated WMI query to identify active security software, defaulting to Windows Defender if none are found.

### Changed
- **Output Location Testing:** Tested different output-location strategies during local executable testing.
- **Dynamic Pathing:** Switched to `BaseDirectory` discovery to ensure the report saves correctly when running as a compiled `.exe`.
- **Desktop / OneDrive Pathing:** Investigated Desktop and OneDrive path behaviour when saving generated reports.
- **Output Reliability:** Implemented `Out-String` and explicit UTF-8 encoding to prevent empty or corrupted report files.

### Fixed
- **Report Location Confusion:** Resolved final path issue where reports were lost in OneDrive-synced desktops by implementing `BaseDirectory` discovery.
- **Data Integrity:** Fixed empty report output bug by using `Out-String` and explicit UTF-8 encoding.
- **Stale Antivirus Entry:** Investigated a stale security software entry from an old installation and verified the final antivirus output again.

---

## 2026-05-07

- **Initial Script:** Created the initial PowerShell metadata collection script.
- **Core Metadata Collection:**
   Added collection of basic support details:
  - computer name
  - current user
  - IP address
  - serial number
  - Windows version
  - last reboot time
- **One-Click Workflow:** Started local testing of the one-click executable workflow.
- **Desktop Shortcut Test:** Tested the executable workflow with and without a desktop shortcut.


### Fixed
- **Empty Report Bug:** Resolved an issue where the text stream wasn't flushed correctly before the file was closed.
- "Working Directory" conflict. Reverted to `BaseDirectory` saving to ensure 100% reliability across different Windows environments.
