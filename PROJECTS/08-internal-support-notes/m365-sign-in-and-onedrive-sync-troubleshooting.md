# M365 Sign-In and OneDrive Sync Troubleshooting

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Internal%20Support%20Note-purple)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)
![Topic](https://img.shields.io/badge/Topic-M365%20%2F%20OneDrive-blue)

---

<table>
<tr>
<td width="300">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Internal IT Support Troubleshooting Note</em>
</td>
</tr>
</table>

**Document ID:** `M365-1007`  
**Category:** Microsoft 365 / OneDrive Support  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** June 2026

---

## Purpose

This internal support note provides a structured first-level troubleshooting flow for Microsoft 365 sign-in issues and OneDrive sync problems.

The goal is to help IT support technicians collect the right information, perform safe checks, resolve common issues, and escalate with useful details if needed.

---

## Scope

This note covers common first-level support cases such as:

- Microsoft 365 sign-in loops
- Repeated MFA prompts
- OneDrive not syncing
- OneDrive sync pending
- OneDrive red X or warning icon
- Files missing locally or online
- Account mismatch between Windows, Office, and OneDrive

---

## Common User Symptoms

Users may report:

- “I cannot sign in to Microsoft 365.”
- “Microsoft keeps asking me to sign in again.”
- “OneDrive is not syncing.”
- “My file is stuck on sync pending.”
- “I changed a file, but my colleague cannot see the update.”
- “The OneDrive icon has a red X.”
- “My files are visible online but not on my computer.”
- “I keep getting MFA prompts.”

---

## Initial Questions

Ask the user:

- When did the issue start?
- Is the issue affecting one app or all Microsoft 365 apps?
- Are you using your work or school account?
- Are you connected to the internet?
- Does Microsoft 365 work in the browser?
- Does the issue happen in InPrivate / Incognito mode?
- Is OneDrive showing a red X, pause symbol, or sync pending?
- Is the affected file visible in OneDrive online?
- Did you recently change your password?
- Did you recently receive an MFA prompt?

---

## Troubleshooting Flow

### 1. Confirm Internet Access

Check whether the user can access normal websites.

If internet access does not work, troubleshoot the network first.

---

### 2. Test Microsoft 365 Online

Ask the user to open Microsoft 365 in a browser and sign in.

Use an InPrivate / Incognito window if needed.

Result:

- If sign-in works online, the issue may be local app/session/cache related.
- If sign-in fails online, the issue may be account, password, MFA, or service related.

---

### 3. Confirm the Correct Account

Check that the user is using the correct work or school account.

Common issue:

- User is signed in with a personal Microsoft account instead of the company account.
- Windows, Office, and OneDrive are using different accounts.

---

### 4. Check Windows Account Connection

On Windows 11:

1. Open **Settings**.
2. Go to **Accounts**.
3. Check **Email & accounts**.
4. Check **Access work or school**.
5. Confirm whether the correct Microsoft 365 account is connected.

Document any account mismatch.

---

### 5. Check MFA Prompt Behavior

If MFA keeps repeating, check:

- Is the user approving the correct sign-in request?
- Did the user change phone or authenticator app?
- Is the browser blocking cookies?
- Does the issue happen only in one browser?
- Does InPrivate / Incognito sign-in work?

Escalate if MFA registration or conditional access settings need admin review.

---

## OneDrive Sync Checks

### 1. Check OneDrive Icon

Check the OneDrive cloud icon in the taskbar.

Possible states:

- Normal cloud icon = signed in and running
- Red X = sync error
- Pause symbol = sync paused
- Spinning arrows = syncing
- No icon = OneDrive may not be running

---

### 2. Confirm OneDrive Is Signed In

Click the OneDrive icon and confirm:

- The user is signed in.
- The account is the correct work or school account.
- OneDrive is not asking for sign-in again.

---

### 3. Resume Syncing

If syncing is paused:

1. Click the OneDrive icon.
2. Open **Help & Settings**.
3. Select **Resume syncing**.

---

### 4. Check the Affected File

Check whether the issue affects:

- One file
- One folder
- All OneDrive files

Check:

- File name
- File path length
- Unsupported characters
- File size
- Whether the file is open in another application

---

### 5. Compare Local File and OneDrive Online

Ask the user to open OneDrive online.

Check:

- Is the file visible online?
- Is the newest version visible online?
- Is the issue only local?
- Is the file missing online too?

Result:

- File online but not local = local sync issue.
- File local but not online = upload/sync issue.
- File missing online and local = possible deletion or wrong location.

---

### 6. Restart OneDrive

Steps:

1. Click the OneDrive icon.
2. Open **Help & Settings**.
3. Select **Quit OneDrive**.
4. Open the Start menu.
5. Search for **OneDrive**.
6. Start OneDrive again.

Wait a few minutes and check sync status.

---

### 7. Restart the Computer

If the issue continues:

1. Ask the user to save open work.
2. Restart the computer.
3. Sign in again.
4. Check OneDrive sync status.

---

## Safe Fixes for First-Level Support

First-level support can usually perform:

- Confirm internet connection
- Confirm correct Microsoft 365 account
- Test Microsoft 365 online
- Test InPrivate / Incognito sign-in
- Check OneDrive icon status
- Resume syncing
- Restart OneDrive
- Restart the computer
- Check file name and location
- Compare local file with OneDrive online
- Collect screenshots and error messages

---

## Escalation Criteria

Escalate if:

- The user cannot authenticate successfully.
- MFA registration is broken or unavailable.
- Conditional access may be blocking access.
- The account may be locked or disabled.
- OneDrive shows persistent sync errors after restart.
- Multiple users report the same issue.
- Important business files are missing.
- Files may have been deleted or overwritten.
- Admin portal checks are required.
- Data recovery or retention settings must be reviewed.

---

## Evidence to Collect

Collect:

- Screenshot of the OneDrive icon/status
- Screenshot of the error message
- Screenshot of Windows **Access work or school**
- Screenshot of Microsoft 365 browser sign-in result
- Affected file name and location
- Time the issue started
- Whether the file appears in OneDrive online
- Whether the issue affects one file or many files
- Troubleshooting steps already completed

---

## Ticket Note Example

**Issue:** User reported Microsoft 365 sign-in / OneDrive sync issue.  
**Action:** Verified internet access, tested Microsoft 365 online, confirmed account, checked Windows account connection, reviewed OneDrive sync status, compared local file with OneDrive online, restarted OneDrive, and restarted the computer.  
**Result:** OneDrive sync resumed / issue requires escalation.  
**Escalation:** Required only if account, MFA, policy, or file recovery review is needed.  
**Status:** Resolved / Escalated.

---

## User Communication Example

Hello, I checked your Microsoft 365 and OneDrive issue. We confirmed your account, tested access online, checked OneDrive sync status, and restarted OneDrive. Please monitor the OneDrive icon and contact IT support again if the warning returns or if other files are affected.

---

## Summary

Microsoft 365 sign-in and OneDrive sync issues are often caused by account mismatch, browser/session problems, MFA prompts, paused syncing, local OneDrive issues, file naming problems, or temporary sync failures.

First-level support should confirm access, compare local and online behavior, restart OneDrive safely, collect evidence, and escalate when account, MFA, policy, or recovery actions are required.
