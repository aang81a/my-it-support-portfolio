# How to Reset a Domain Password
![Type](https://img.shields.io/badge/Type-SOP-blueviolet)
![Topic](https://img.shields.io/badge/Topic-Active%20Directory-0078D4?logo=microsoft&logoColor=white)

---

<table>
<tr>
<td valign="middle">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td valign="middle"> <em>Internal IT Standard Operating Procedure</em>
</td>
</tr>
</table>

**Document ID:** `AD-1003`  
**Category:** User Account Support  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** May 2026

---

## Purpose

This note explains the basic support workflow for resetting a user password in an Active Directory environment.

It is intended as an internal quick-reference note for IT support tasks.

---

## Support Context

A domain password reset may be needed when a user cannot sign in, forgot their password, or has a locked account after failed login attempts.

Password resets are security-sensitive. The user identity must be verified before any reset is performed.

---

## Before You Start

Check the following before resetting the password:

- Verify the user’s identity according to company policy.
- Confirm the correct user account.
- Check whether the account is locked, disabled, or expired.
- Confirm whether the user is onsite, remote, or using VPN.
- Do not ask for the user’s current password.
- Do not document passwords in tickets, screenshots, or notes.

---

## Procedure

1. Open **Active Directory Users and Computers**.
2. Locate the correct user account.
3. Check the account status.
4. If the user identity is verified and the account is valid, right-click the account and select **Reset Password**.
5. Enter a temporary password that follows company password policy.
6. Select **User must change password at next logon**, if required.
7. Confirm the change.
8. Ask the user to sign in with the temporary password.
9. Confirm that the user can log in successfully.

---

## Common Issues

- **Account is locked:** Unlock the account if company policy allows it.
- **Account is disabled:** Do not enable it unless this is approved.
- **User is remote:** VPN or cached credentials may affect sign-in after the reset.
- **Password is rejected:** Check password complexity rules and password history requirements.
- **Account locks again:** Check for saved old passwords in Outlook, Teams, mobile devices, mapped drives, or Credential Manager.

---

## Escalation Triggers

Escalate the case if:

- the user identity cannot be verified
- the account is disabled
- suspicious login activity is visible
- the account keeps locking repeatedly
- the password reset fails
- the user cannot update cached credentials remotely
- higher-level permissions are required

---

## Ticket Documentation Notes

Document only support-relevant information:

- user identity was verified
- affected username or user ID
- account status before reset
- whether the account was locked
- whether the password was reset
- whether **User must change password at next logon** was enabled
- whether the user confirmed successful sign-in
- whether escalation was required

Do not document the temporary password itself.
