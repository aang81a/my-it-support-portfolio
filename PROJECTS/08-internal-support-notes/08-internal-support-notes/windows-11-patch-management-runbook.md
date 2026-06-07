# Windows 11 Patch Management Runbook

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Runbook-purple)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)
![Topic](https://img.shields.io/badge/Topic-Windows%2011%20Patching-blue)

---

<table>
<tr>
<td width="300">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Internal IT Support Runbook</em>
</td>
</tr>
</table>

**Document ID:** `WIN-1009`  
**Category:** Windows 11 / Patch Management  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** June 2026

---

## Purpose

This runbook explains a basic Windows 11 patch management workflow for first-level IT support.

The goal is to keep Windows devices updated, reduce security risk, document update status, and provide safe rollback steps if an update causes problems.

---

## Scope

This runbook covers:

- Windows 11 update checks
- Update installation
- Restart verification
- Update history review
- Basic failed update handling
- Basic rollback awareness
- Evidence collection for support documentation

This runbook does not cover enterprise-wide patch deployment, Intune configuration, Windows Server patching, or advanced update policy management.

---

## Patch Management Goals

Windows patch management helps to:

- Keep devices secure
- Fix known issues
- Improve system stability
- Reduce exposure to vulnerabilities
- Maintain a predictable update routine
- Document update status for support cases

---

## Recommended Patch Routine

| Task | Recommended Frequency |
|---|---|
| Check for Windows updates | Weekly |
| Install available updates | During a planned update window |
| Restart device | After update installation if required |
| Verify update status | After restart |
| Review update history | After installation |
| Document KB IDs | For evidence and troubleshooting |

---

## Before You Start

Confirm:

- The user has saved all open work.
- The device is connected to power.
- The device has internet access.
- The device has enough free disk space.
- The user has time for a restart if required.
- No critical work is running during the update window.

---

## Procedure

### 1. Check Current Windows Version

1. Open **Settings**.
2. Go to **System**.
3. Select **About**.
4. Check Windows edition, version, and build number.

Record the current version if needed.

---

### 2. Open Windows Update

1. Open **Settings**.
2. Select **Windows Update**.
3. Check the current update status.

Possible states:

- Device is up to date
- Updates available
- Restart required
- Update failed
- Updates paused

---

### 3. Check for Updates

1. Select **Check for updates**.
2. Wait for Windows to search for available updates.
3. Review the update list.

Do not interrupt the update check.

---

### 4. Install Updates

1. Select **Download & install** if updates are available.
2. Wait for the installation to complete.
3. Keep the device connected to power.
4. Do not shut down the computer during installation.

---

### 5. Restart the Device

If Windows requests a restart:

1. Ask the user to save all work.
2. Close open applications.
3. Restart the device.
4. Wait until Windows finishes the update process.
5. Sign in again.

---

### 6. Verify Update Status

After restart:

1. Open **Settings**.
2. Go to **Windows Update**.
3. Confirm whether Windows shows the device is up to date.
4. Check whether another restart is required.

---

### 7. Review Update History

1. Open **Settings**.
2. Go to **Windows Update**.
3. Select **Update history**.
4. Review installed updates.
5. Record relevant KB numbers.

Example:

```text
KB number: KBxxxxxxx
Status: Successfully installed
Date: YYYY-MM-DD
```
---

## What-If Table

| Situation | First-Level Action |
|---|---|
| Update requires restart | Ask user to save work and restart device |
| Update fails once | Restart device and try again |
| Update keeps failing | Collect error code and escalate |
| Device has low storage | Free safe temporary files or escalate |
| User cannot restart now | Schedule restart during a suitable time |
| Device is very slow after update | Check Task Manager, restart again, collect symptoms |
| User reports app issue after update | Document affected app, update KB ID, time of issue |
| Blue screen or boot issue occurs | Escalate immediately |
| Update caused serious issue | Check rollback/recovery options and escalate |

---

## Rollback Awareness

Rollback should be handled carefully.

Possible rollback options may include:

- Uninstalling a recent update
- Using Windows recovery options
- Restoring from backup
- Using a system restore point if available

First-level support should not remove updates without permission or policy guidance.

Escalate if:

- The device cannot boot
- A business-critical application stopped working
- Multiple users report the same issue
- Security updates may need to be removed
- Admin approval is required

---

## Evidence to Capture

Recommended evidence:

- Screenshot of Windows Update status before update
- Screenshot of available updates
- Screenshot of restart required message
- Screenshot of successful update status
- Screenshot of update history
- KB IDs of installed updates
- Date and time of update
- Any error code if installation failed

---

## Ticket Note Example

**Issue:** Windows 11 device required patch verification.  
**Action:** Checked Windows Update status, installed available updates, restarted the device, reviewed update history, and recorded KB IDs.  
**Result:** Device updated successfully / update failed and requires escalation.  
**Status:** Completed / Escalated.  
**Escalation:** Required only if update failure, rollback, boot issue, or admin review is needed.

---

## Risks and Notes

- Updates may require one or more restarts.
- Users should save work before installation or restart.
- Failed updates should be documented with error codes.
- Removing updates may increase security risk.
- Update issues should be escalated if they affect business-critical work.
- Patch documentation should include KB IDs when available.

---

## Changelog

| Version | Date | Change |
|---|---|---|
| v1.0 | June 2026 | Initial runbook created |

---

## Summary

This runbook provides a basic Windows 11 patch management workflow for first-level IT support.

The key steps are checking update status, installing updates during a safe window, restarting the device, verifying update history, recording KB IDs, and escalating failed or risky update issues.
