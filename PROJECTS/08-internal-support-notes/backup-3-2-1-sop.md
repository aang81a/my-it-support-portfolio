# 3-2-1 Backup SOP

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-SOP-purple)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)
![Topic](https://img.shields.io/badge/Topic-Backup%20and%20Recovery-blue)

---

<table>
<tr>
<td width="300">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Internal IT Standard Operating Procedure</em>
</td>
</tr>
</table>

**Document ID:** `BACK-1008`  
**Category:** Backup / Recovery / Data Protection  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** June 2026

---

## Purpose

This SOP explains how to apply the 3-2-1 backup rule for a Windows 11 user device using OneDrive and an external drive.

The goal is to reduce the risk of data loss and confirm that files can be restored when needed.

---

## Scope

This SOP covers a basic first-level backup and restore check for:

- Windows 11 user files
- OneDrive-synced files
- External drive backup
- Simple restore verification

This SOP does not cover enterprise backup systems, server backups, or full disaster recovery planning.

---

## 3-2-1 Backup Rule

The 3-2-1 backup rule means:

- **3 copies** of important data
- **2 different storage types**
- **1 copy stored separately**

Example:

| Copy | Location | Purpose |
|---|---|---|
| Copy 1 | Local Windows 11 device | Working copy |
| Copy 2 | OneDrive | Cloud copy / version history |
| Copy 3 | External drive | Separate backup copy |

---

## Prerequisites

Before starting, confirm:

- The user is signed in to Windows.
- OneDrive is running and signed in.
- Important folders are known.
- An external drive is available.
- The external drive has enough free space.
- The user knows which files must be protected.

---

## Procedure

### 1. Identify Important Files

Ask the user which files or folders are important.

Common locations:

- Desktop
- Documents
- Downloads
- Pictures
- Project folders
- Work files stored in OneDrive

Do not delete or move files during this step.

---

### 2. Check OneDrive Sync Status

1. Check the OneDrive cloud icon in the taskbar.
2. Confirm the user is signed in.
3. Confirm there are no sync errors.
4. Open the OneDrive folder.
5. Confirm important files are inside the OneDrive location.

If OneDrive shows a red X or sync warning, troubleshoot OneDrive before relying on the cloud copy.

---

### 3. Confirm Files Are Available Online

1. Open OneDrive online.
2. Sign in with the correct Microsoft 365 account.
3. Check whether the important files are visible online.
4. Open one file to confirm access.

This confirms that the cloud copy exists.

---

### 4. Prepare the External Drive

1. Connect the external drive.
2. Open File Explorer.
3. Confirm the drive appears.
4. Check available storage space.
5. Create a backup folder.

Recommended folder name:

```text
Backup_YYYY-MM-DD
