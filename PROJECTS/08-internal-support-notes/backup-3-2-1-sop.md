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
```

---

Example:

`Backup_2026-06-07`

---

### 5. Copy Files to the External Drive

Copy the selected important folders to the external drive.

Recommended method:

- Use File Explorer for a simple manual backup.
- Use Robocopy if a more structured copy is needed.

Example Robocopy command:

```powershell
robocopy "C:\Users\<username>\Documents" "E:\Backup_2026-06-07\Documents" /E /COPY:DAT /R:2 /W:2
```

Replace:

- `<username>` with the Windows username
- `E:` with the correct external drive letter

---

### 6. Verify the Backup Copy

After copying:

1. Open the backup folder on the external drive.
2. Check that the expected files are present.
3. Open at least one file from the external drive.
4. Confirm the file opens correctly.
5. Compare file count or folder size if needed.

## Restore Test

A backup is not complete until a restore test is performed.

## Restore Test Steps

1. Create a temporary restore folder on the desktop.
`Restore_Test_YYYY-MM-DD`
2. Copy one test file from the external drive into the restore test folder.
3. Open the restored file.
4. Confirm that the content is correct.
5. Delete the temporary restore test folder after verification if no longer needed.

## Verification

The backup is successful when:

- OneDrive sync shows no errors.
- Important files are visible in OneDrive online.
- Files are copied to the external drive.
- At least one file is restored successfully.
- The restored file opens correctly.
- The date and time of the restore test are documented.

## Evidence to Capture

Recommended evidence:

- Screenshot of OneDrive sync status.
- Screenshot of files visible in OneDrive online.
- Screenshot of the external drive backup folder.
- Screenshot of the restored test file.
- Date and time of restore test.
- Short note confirming restore success.

## Rollback / Safety Notes

If something goes wrong:

- Do not delete the original files.
- Do not format the external drive.
- Stop the backup process if files appear missing or corrupted.
- Check whether the files are still available in OneDrive online.
- Use OneDrive version history if a file was changed accidentally.
- Escalate if business-critical files are missing.

## Risks and Notes

- OneDrive sync is not the same as a full backup.
- If a file is deleted locally, the deletion may sync to the cloud.
- Version history can help recover earlier versions.
- External drives can fail, be lost, or be overwritten.
- A restore test is required to confirm that the backup is usable.
- Sensitive data should be handled according to company policy.

## Ticket Note Example

**Issue**: User requested backup verification for important Windows 11 files.
**Action**: Checked OneDrive sync status, confirmed files online, copied selected folders to external drive, and performed a restore test.
**Result**: Backup completed and test file restored successfully.
**Status**: Completed.
**Escalation**: Not required.
**Prevention**: User advised to keep OneDrive running and repeat backup checks regularly.

## Changelog

Version	Date	Change
v1.0	June 2026	Initial SOP created

## Summary

This SOP demonstrates a basic 3-2-1 backup approach using a Windows 11 device, OneDrive, and an external drive.

The key requirement is not only copying files, but also verifying that at least one file can be restored successfully.
