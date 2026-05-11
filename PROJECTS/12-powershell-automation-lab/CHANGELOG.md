# Changelog
All notable changes to this project will be documented in this file.

## - 2026-05-11
### Added
- **Timestamps:** Added `HHmm` format to filenames to prevent overwriting during multiple diagnostic runs.
- **Timestamped Filenames:** Implemented `HHmm` format to prevent data loss during back-to-back diagnostic runs.
- **Portability Test:** Successfully validated binary execution on a clean Windows 10 environment (C:\ root).

## - 2026-05-09
### Fixed
- **Path Redirection:** Resolved "Ghost File" issue where reports were lost in OneDrive-synced desktops by implementing `BaseDirectory` discovery.
- **Data Integrity:** Fixed an "Empty File" bug by forcing string conversion and UTF8 encoding.
- **Antivirus Detection:** Automated WMI query to identify active security software, defaulting to Windows Defender if none are found.

## - 2026-05-07
### Added
- Initial L1 Support Utility with WMI-based Antivirus detection.
- **Core Diagnostic Logic:** Initial release of the L1 Support Utility.
- **System Metadata:** Collection of Serial Number, IP Address, Windows Version, and Last Boot Time.

---

### Changed
#### - 2026-05-09
- **Dynamic Pathing:** Switched to `BaseDirectory` discovery to ensure the report saves correctly when running as a compiled `.exe`.
- **Output Reliability:** Implemented `Out-String` and explicit `UTF8` encoding to prevent empty or corrupted report files.

#### - 2026-05-11
- **Pathing Logic:** Switched to `BaseDirectory` discovery. This ensures the report always generates next to the executable, bypassing OneDrive pathing issues.
- **User Instructions:** Updated README to recommend running from a Desktop folder for better visibility.

---

### Fixed
- **Empty Report Bug:** Resolved an issue where the text stream wasn't flushed correctly before the file was closed.
- "Working Directory" conflict. Reverted to `BaseDirectory` saving to ensure 100% reliability across different Windows environments.
