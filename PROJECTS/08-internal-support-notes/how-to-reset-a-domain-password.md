# How to Reset a Domain Password

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-SOP-purple)
![Topic](https://img.shields.io/badge/Topic-Active%20Directory-blue)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)

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

**Document ID:** `AD-1003`  
**Category:** Active Directory / Password Reset  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** June 2026

---

## Purpose

This SOP explains the basic support process for resetting a domain user password in an Active Directory environment.

The goal is to support users safely while protecting account security and documenting the reset correctly.

---

## Scope

This SOP covers:

- Domain user password reset
- Account lockout checks
- Identity verification
- Temporary password handling
- “User must change password at next logon”
- Basic remote-user considerations
- Ticket documentation

This SOP does not cover advanced identity investigation, compromised account response, Entra ID-only accounts, or privileged admin account recovery.

---

## Support Context

A domain password reset may be needed when:

- A user cannot sign in with their domain account.
- A user forgot their password.
- A user account is locked after failed login attempts.
- A password expired.
- IT Support needs to issue a temporary password.
- The user must change the password at next sign-in.

Password resets are security-sensitive. The user identity must be verified before any reset is performed.

---

## Before You Start

Check the following before resetting the password:

- Verify the user’s identity according to company policy.
- Confirm the correct username.
- Confirm whether the user is onsite, remote, or using VPN.
- Check whether the account is locked, disabled, or expired.
- Check whether the password has recently expired.
- Do not ask the user for their current password.
- Do not document passwords in tickets, chats, screenshots, or notes.

---

## Procedure

### 1. Verify the User

Before resetting the password, verify the user identity.

Use the company-approved verification method, for example:

- Employee ID
- Callback to a registered phone number
- Manager confirmation
- Security questions, if approved by company policy
- Identity verification through the company service desk process

Do not reset the password if the user identity cannot be verified.

---

### 2. Find the User Account

1. Open **Active Directory Users and Computers**.
2. Search for the correct user account.
3. Confirm that the account matches the user request.

Check:

- Username
- Display name
- Department, if available
- Account status
- Lockout status
- Password expiry status

---

### 3. Check Account Status

Before resetting the password, check whether the issue may be caused by something else.

Possible account states:

- Account locked
- Password expired
- Account disabled
- Wrong username
- User not connected to VPN or company network
- Cached credentials issue on a remote device

If the account is disabled or there is a security concern, escalate according to company policy.

---

### 4. Reset the Password

1. Right-click the correct user account.
2. Select **Reset Password**.
3. Enter a temporary password that follows company password policy.
4. If available, select **User must change password at next logon**.
5. Confirm the change.

Do not reuse old passwords or simple passwords.

---

### 5. Inform the User Securely

Provide the temporary password using the company-approved communication method.

Do not send passwords through insecure channels.

If company policy allows temporary passwords, instruct the user to change the password immediately after signing in.

---

### 6. User Signs In

Ask the user to sign in with the temporary password.

If the user is remote, they may need to:

- Connect to VPN
- Use the company password portal
- Lock and unlock Windows after password change
- Update saved credentials in Outlook, Teams, or other applications
- Reconnect mapped network drives

The exact steps depend on the company environment.

---

### 7. Confirm the Result

Ask the user to confirm that they can sign in successfully.

Also confirm whether they can access required services, such as:

- Windows login
- VPN
- Outlook
- Teams
- Shared drives
- Internal applications

---

## Common Issues

| Issue | Possible Cause / Action |
|---|---|
| Account is locked | Unlock the account if company policy allows it |
| Account is disabled | Do not enable it unless this is approved |
| User is remote | VPN or cached credentials may affect sign-in after reset |
| Password is rejected | Check password complexity and password history requirements |
| Account locks again | Check for saved old passwords in apps, devices, or Credential Manager |

---

## Troubleshooting

### The User Still Cannot Sign In

Check:

- Whether the username is correct
- Whether the temporary password was typed correctly
- Whether Caps Lock is on
- Whether the account is locked again
- Whether the user is connected to VPN or company network
- Whether the user is signing in to the correct domain

---

### The Account Locks Again Immediately

Possible causes:

- Saved old password in Outlook or Teams
- Saved old password in Windows Credential Manager
- Mobile device still using old password
- Mapped drive using old credentials
- Background service using old credentials
- Repeated login attempts with the old password

Ask the user to update saved passwords on all relevant devices.

---

### The User Is Remote and Cannot Update the Windows Login Password

If the user is working remotely, the local Windows login may still use cached credentials.

Possible next steps:

- Connect to VPN before changing the password, if possible
- Use the company password reset portal
- Lock and unlock Windows after connecting to VPN
- Escalate if the device cannot receive updated domain credentials

Follow company policy for remote password reset situations.

---

### The Account Is Disabled

Do not enable the account unless this is approved.

Escalate to the responsible team or follow the company user account reactivation process.

---

## Escalation Triggers

Escalate the case if:

- The user identity cannot be verified.
- The account is disabled.
- Suspicious login activity is visible.
- The account keeps locking repeatedly.
- The password reset fails.
- The user cannot update cached credentials remotely.
- Higher-level permissions are required.
- A privileged or admin account is involved.

---

## Ticket Documentation Notes

Document only support-relevant information:

- User identity was verified
- Affected username or user ID
- Account status before reset
- Whether the account was locked
- Whether the password was reset
- Whether **User must change password at next logon** was enabled
- Whether the user confirmed successful sign-in
- Whether escalation was required

Do not document the temporary password itself.

---

## Ticket Note Example

**Issue:** User could not sign in with domain account.  
**Action:** Verified user identity, checked account status, confirmed account lockout, reset password, and enabled **User must change password at next logon**.  
**Result:** User confirmed successful sign-in.  
**Status:** Resolved.  
**Escalation:** Not required.

---

## Security Notes

- Never ask the user for their current password.
- Never store passwords in tickets, emails, screenshots, or notes.
- Verify user identity before resetting a password.
- Use only approved password reset tools and procedures.
- Require password change at next logon when possible.
- Escalate suspicious or repeated account lockout issues.
- Follow company password and identity verification policies.

---

## Changelog

| Version | Date | Change |
|---|---|---|
| v1.0 | June 2026 | Final consolidated SOP created |

---

## Summary

Before resetting a domain password, verify the user’s identity, confirm the correct account, check account status, and follow the approved reset process.

After the reset, the user should confirm successful sign-in, and the support ticket should document the action without storing the password.
