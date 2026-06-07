# Windows 11 Performance Tune-Up Checklist

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Checklist-purple)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)
![Topic](https://img.shields.io/badge/Topic-Windows%2011%20Performance-blue)

---

<table>
<tr>
<td width="300">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Internal IT Support Checklist</em>
</td>
</tr>
</table>

**Document ID:** `WIN-1010`  
**Category:** Windows 11 / Performance Troubleshooting  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** June 2026

---

## Purpose

This checklist provides safe and reversible first-level steps for improving slow Windows 11 PC performance.

The goal is to check common causes of slowness, document the findings, avoid risky changes, and escalate when deeper troubleshooting is required.

---

## Scope

This checklist covers:

- Basic performance checks
- Startup apps review
- Storage check
- Windows Update check
- Task Manager review
- Browser/app behavior
- Safe cleanup steps
- Evidence collection

This checklist does not cover hardware repair, malware removal beyond escalation, registry editing, advanced driver changes, or enterprise performance tuning.

---

## Common User Symptoms

Users may report:

- Computer starts slowly
- Apps open slowly
- System freezes or becomes unresponsive
- Browser is slow
- Fan is loud for a long time
- Device is slow after login
- Disk, CPU, or memory usage is high
- Performance became worse after an update or software installation

---

## Before You Start

Confirm:

- The user saved open work.
- The issue is not caused by a known outage.
- The device has been restarted recently.
- The user can describe when the slowness started.
- You do not remove business applications without approval.
- You do not disable security, backup, VPN, or company-required tools.

---

## Checklist

| Check | Action | Result / Notes |
|---|---|---|
| Restart device | Ask user to restart if uptime is long or device is unstable |  |
| Close unused apps | Close unnecessary applications and browser tabs |  |
| Check Task Manager | Review CPU, Memory, Disk, and Startup apps |  |
| Check startup apps | Disable only safe, non-essential startup apps |  |
| Check storage | Review free space in Settings > System > Storage |  |
| Temporary files | Use Storage settings to remove safe temporary files |  |
| Windows Update | Check update status and restart requirement |  |
| Browser behavior | Test whether slowness is browser-specific |  |
| External devices | Disconnect unnecessary USB devices if relevant |  |
| Recent changes | Ask about new apps, updates, drivers, or extensions |  |
| Escalation need | Escalate if symptoms continue or risk is unclear |  |

---

## Procedure

### 1. Restart the Device

1. Ask the user to save all open work.
2. Restart the computer.
3. Wait until the user signs in again.
4. Check whether performance improves.

Document whether the restart resolved or reduced the issue.

---

### 2. Check Task Manager

1. Right-click the taskbar.
2. Select **Task Manager**.
3. Open the **Processes** tab.
4. Check CPU, Memory, and Disk usage.
5. Identify apps using unusually high resources.

Do not end unknown system processes without understanding the impact.

---

### 3. Review Startup Apps

1. Open **Task Manager**.
2. Select **Startup apps**.
3. Review enabled startup apps.
4. Disable only safe, non-essential apps.
5. Restart and observe performance if needed.

Do not disable:

- Antivirus / Defender components
- VPN software
- Backup tools
- Company management tools
- Required business applications

---

### 4. Check Storage

1. Open **Settings**.
2. Go to **System**.
3. Select **Storage**.
4. Check available space on the main drive.
5. Review temporary files if needed.

Low storage can cause slow performance and update problems.

---

### 5. Remove Safe Temporary Files

Use Windows Storage settings.

Safe examples may include:

- Temporary files
- Recycle Bin, if user confirms files are not needed
- Windows temporary cache files

Avoid deleting:

- Downloads without user confirmation
- Personal files
- Business files
- Unknown folders
- OneDrive files if sync status is unclear

---

### 6. Check Windows Update Status

1. Open **Settings**.
2. Go to **Windows Update**.
3. Check whether updates are pending.
4. Check whether a restart is required.
5. Review update history if the issue started after an update.

Document any relevant KB ID if an update may be related.

---

### 7. Check Browser or Application Scope

Ask:

- Is only one application slow?
- Is only one website slow?
- Does the issue happen in another browser?
- Does the issue happen after closing browser tabs?
- Did the user install a new extension?

If only one website or application is affected, document it as app-specific.

---

## Safe Fixes

First-level support may safely try:

- Restarting the device
- Closing unused applications
- Reducing unnecessary startup apps
- Removing safe temporary files
- Checking Windows Update status
- Restarting the affected application
- Testing another browser
- Collecting screenshots and performance details

---

## Rollback / Undo Notes

| Change | How to Undo |
|---|---|
| Disabled startup app | Re-enable it in Task Manager > Startup apps |
| Closed application | Open the application again |
| Removed temporary files | Usually no rollback; confirm before deleting |
| Restarted device | No rollback needed |
| Browser test | Return to normal browser after testing |
| Update installed | Escalate before uninstalling updates |

---

## Escalation Criteria

Escalate if:

- Device remains very slow after safe checks
- CPU, Memory, or Disk usage stays very high
- The device freezes repeatedly
- Windows updates fail
- The issue started after a driver or system update
- Malware or suspicious behavior is suspected
- Business-critical apps are affected
- The user cannot work
- Hardware failure is suspected
- Admin rights or deeper investigation are required

---

## Evidence to Capture

Recommended evidence:

- Screenshot of Task Manager Processes tab
- Screenshot of Startup apps before changes
- Screenshot of Storage page
- Screenshot of Windows Update status
- Screenshot of Update history if relevant
- Notes about boot/login delay if observed
- Affected application names
- Date and time when the issue started

---

## Ticket Note Example

**Issue:** User reported slow Windows 11 performance.  
**Action:** Restarted device, checked Task Manager, reviewed startup apps, checked storage, checked Windows Update status, and collected user symptoms.  
**Result:** Performance improved / issue requires escalation.  
**Status:** Resolved / Escalated.  
**Escalation:** Required if high resource usage, update failure, suspected malware, or hardware issue remains.

---

## Risks and Notes

- Do not delete user files without confirmation.
- Do not disable security or company management tools.
- Do not uninstall business applications without approval.
- Do not edit the registry for basic performance issues.
- Document any change that affects startup behavior.
- Escalate when the cause is unclear or business-critical work is affected.

---

## Changelog

| Version | Date | Change |
|---|---|---|
| v1.0 | June 2026 | Initial checklist created |

---

## Summary

This checklist supports safe first-level Windows 11 performance troubleshooting.

The main focus is to restart, observe resource usage, check startup apps, review storage, check updates, document evidence, and escalate when deeper technical investigation is required.
