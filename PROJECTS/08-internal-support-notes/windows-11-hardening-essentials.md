# Windows 11 Hardening Essentials

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Checklist-purple)
![Topic](https://img.shields.io/badge/Topic-Windows%2011%20Hardening-blue)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)

---

<table>
<tr>
<td width="300">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Internal IT Support Security Checklist</em>
</td>
</tr>
</table>

**Document ID:** `SEC-1012`  
**Category:** Windows 11 / Security Hardening  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** June 2026

---

## Purpose

This checklist covers basic Windows 11 hardening checks that are useful for first-level IT support.

The goal is to improve endpoint security, verify important protection settings, and document security-relevant findings without making risky system changes.

---

## Scope

This checklist covers:

- Non-admin daily use
- Windows Security status
- Microsoft Defender Antivirus
- Firewall status
- BitLocker awareness
- SmartScreen / reputation-based protection
- Windows Update status
- Local account and sign-in basics
- Evidence collection

This checklist does not cover advanced security baselines, Group Policy design, Intune configuration, enterprise EDR tuning, or registry hardening.

---

## Hardening Checklist

| Check | What to Verify | Result / Notes |
|---|---|---|
| User account type | User should not use admin account for daily work |  |
| Windows Security | No major security warnings visible |  |
| Defender Antivirus | Antivirus protection is active |  |
| Firewall | Firewall is enabled for active network profile |  |
| Windows Update | Device is up to date or update status is documented |  |
| BitLocker | Drive encryption status checked |  |
| SmartScreen | Reputation-based protection checked |  |
| Sign-in protection | Password/PIN/Windows Hello status checked |  |
| Suspicious apps | Unknown or risky apps documented |  |
| Evidence | Screenshots and notes captured |  |

---

## Procedure

### 1. Check User Account Type

1. Open **Settings**.
2. Go to **Accounts**.
3. Check account information.
4. Confirm whether the user is using a standard user account or admin account.

Best practice:

- Daily work should use a non-admin account.
- Admin access should only be used when needed and approved.

---

### 2. Check Windows Security Overview

1. Open **Windows Security**.
2. Review the security overview.
3. Check for warning icons or required actions.

Document any visible warning.

---

### 3. Check Microsoft Defender Antivirus

1. Open **Windows Security**.
2. Go to **Virus & threat protection**.
3. Check protection status.
4. Check whether action is required.

Escalate if antivirus is disabled, outdated, or showing repeated warnings.

---

### 4. Check Firewall Status

1. Open **Windows Security**.
2. Go to **Firewall & network protection**.
3. Check the active network profile.
4. Confirm that firewall protection is enabled.

Do not disable the firewall unless explicitly approved.

---

### 5. Check Windows Update Status

1. Open **Settings**.
2. Go to **Windows Update**.
3. Check whether updates are available.
4. Check whether a restart is required.
5. Document update status.

---

### 6. Check BitLocker Status

Check whether drive encryption is enabled.

Possible check:

```powershell
manage-bde -status
```

Document:

- Protection status
- Encryption status
- Drive checked

Escalate if encryption is required by policy but not enabled.

---

### 7. Check SmartScreen / Reputation-Based Protection

1. Open **Windows Security**.
2. Go to **App & browser control**.
3. Check **Reputation-based protection**.
4. Document whether warnings or disabled protections are visible.

---

### 8. Check Sign-In Protection

Check whether the device uses secure sign-in options such as:

- Password
- PIN
- Windows Hello, if available
- Lock screen after inactivity, if policy applies

Do not change sign-in settings without user confirmation or company policy.

---

## Safe First-Level Actions

First-level support may:

- Check and document security status
- Confirm Windows Security warnings
- Check Defender and firewall status
- Check update status
- Check BitLocker status
- Collect screenshots
- Escalate missing or disabled protections

First-level support should not:

- Disable Defender
- Disable firewall
- Edit security registry keys
- Remove security software
- Bypass company policy
- Enable encryption without approval or recovery-key handling

---

## Escalation Criteria

Escalate if:

- Defender is disabled
- Firewall is disabled
- BitLocker is required but not enabled
- Recovery key handling is unclear
- Malware or suspicious behavior is suspected
- Security settings are managed by policy
- Admin approval is required
- Multiple devices show the same issue
- The user has unnecessary local admin rights

---

## Evidence to Capture

Recommended evidence:

- Screenshot of Windows Security overview
- Screenshot of Virus & threat protection status
- Screenshot of Firewall & network protection status
- Screenshot of Windows Update status
- Screenshot or output of BitLocker status
- Screenshot of App & browser control status
- Notes about account type and admin rights
- Date and time of the check

---

## Ticket Note Example

**Issue:** Windows 11 hardening check requested.  
**Action:** Checked account type, Windows Security overview, Defender status, firewall status, Windows Update status, BitLocker status, and reputation-based protection.  
**Result:** Security status documented / issue requires escalation.  
**Status:** Completed / Escalated.  
**Escalation:** Required if endpoint protection, firewall, encryption, admin rights, or policy-controlled settings need review.

---

## Risks and Notes

- Hardening should follow company policy.
- Security settings should not be weakened for convenience.
- Encryption changes require recovery-key awareness.
- Local admin rights increase risk.
- Disabled protection should be documented and escalated.
- First-level support should verify and report, not make risky security changes alone.

---

## Changelog

| Version | Date | Change |
|---|---|---|
| v1.0 | June 2026 | Initial checklist created |

---

## Summary

This checklist shows basic Windows 11 security-hardening awareness for IT support.

The main focus is to verify protection status, document evidence, avoid risky changes, and escalate security issues when admin or policy-level action is required.
