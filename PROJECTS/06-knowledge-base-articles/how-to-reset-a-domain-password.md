# How to Reset a Domain Password

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Knowledge%20Base%20Article-blue)
![Audience](https://img.shields.io/badge/Audience-IT%20Support-lightgrey)
![Topic](https://img.shields.io/badge/Topic-Password%20Reset-blue)

---

*Knowledge Base Article*

**Article ID:** KB-1006  
**Category:** Internal IT Support / Password Reset  
**Audience:** IT support  
**Last Updated:** May 2026  

---

## Purpose

This knowledge base article explains the basic support process for resetting a domain user password.

The steps are intended for IT support use. Password resets should only be performed after the user identity has been verified according to company policy.

---

## When to Use This Guide

Use this guide if:

- a user cannot sign in with their domain account
- a user forgot their domain password
- a user account is locked due to failed login attempts
- IT Support needs to issue a temporary password
- the user must change the password at next sign-in

---

## Before You Start

Check these points first:

- Verify the user’s identity according to company policy.
- Confirm the correct username.
- Confirm whether the user is onsite, remote, or using VPN.
- Check whether the account is locked or disabled.
- Check whether the password has recently expired.
- Do not ask the user to send their old password.
- Do not write passwords in tickets, chats, screenshots, or emails unless company policy explicitly allows a secure temporary-password process.

---

## Step 1 – Verify the User

Before resetting the password, verify the user identity.

Use the company-approved verification method, for example:

- employee ID
- callback to a registered phone number
- manager confirmation
- security questions, if approved by company policy
- identity verification through the company service desk process

Do not reset the password if the user identity cannot be verified.

---

## Step 2 – Find the User Account

1. Open the approved user management tool.
2. Search for the user account.
3. Confirm that the account matches the user request.

Check:

- username
- display name
- department, if available
- account status
- lockout status
- password expiry status

---

## Step 3 – Check Account Status

Before resetting the password, check whether the issue may be caused by something else.

Possible account states:

- account locked
- password expired
- account disabled
- wrong username
- user not connected to VPN or company network
- cached credentials issue on a remote device

If the account is disabled or there is a security concern, escalate according to company policy.

---

## Step 4 – Reset the Password

1. Select the correct user account.
2. Choose the password reset option.
3. Enter a temporary password according to company password policy.
4. If available, select **User must change password at next logon**.
5. Save the change.

Do not reuse old passwords or simple passwords.

---

## Step 5 – Inform the User Securely

Provide the temporary password using the company-approved communication method.

Do not send passwords through insecure channels.

If company policy allows temporary passwords, instruct the user to change the password immediately after signing in.

---

## Step 6 – User Signs In

Ask the user to sign in with the temporary password.

If the user is remote, they may need to:

- connect to VPN
- use the company password portal
- lock and unlock Windows after password change
- update saved credentials in Outlook, Teams, or other applications
- reconnect mapped network drives

The exact steps depend on the company environment.

---

## Step 7 – Confirm the Result

Ask the user to confirm that they can sign in successfully.

Also confirm whether they can access required services, such as:

- Windows login
- VPN
- Outlook
- Teams
- shared drives
- internal applications

---

## Troubleshooting

### The user still cannot sign in

Check:

- whether the username is correct
- whether the temporary password was typed correctly
- whether Caps Lock is on
- whether the account is locked again
- whether the user is connected to VPN or company network
- whether the user is signing in to the correct domain

---

### The account is locked again immediately

Possible causes:

- saved old password in Outlook or Teams
- saved old password in Windows Credential Manager
- mobile device still using old password
- mapped drive or background service using old credentials
- repeated login attempts with the old password

Ask the user to update saved passwords on all relevant devices.

---

### The user is remote and cannot update the Windows login password

If the user is working remotely, the local Windows login may still use cached credentials.

Possible next steps:

- connect to VPN before changing the password, if possible
- use the company password reset portal
- lock and unlock Windows after connecting to VPN
- escalate if the device cannot receive updated domain credentials

Follow company policy for remote password reset situations.

---

### The account is disabled

Do not enable the account unless this is approved.

Escalate to the responsible team or follow the company user account reactivation process.

---

## When to Escalate

Escalate the case if:

- the user identity cannot be verified
- the account is disabled
- suspicious login activity is visible
- the account keeps locking repeatedly
- the user cannot update cached credentials remotely
- the password reset fails
- permissions or account status require higher-level review

---

## Information to Document

Document the following in the support ticket:

- user identity was verified
- username or user ID
- account status before reset
- whether the account was locked
- whether password was reset
- whether user must change password at next logon was enabled
- whether the user confirmed successful sign-in
- whether escalation was required

Do not document the password itself.

Example ticket note:

```text
User identity was verified according to support procedure. Account was locked due to failed login attempts. Password was reset, and user was required to change password at next logon. User confirmed successful sign-in. No escalation required.
```

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

## Summary

Before resetting a domain password, verify the user’s identity, confirm the correct account, check the account status, and follow the approved reset process.

After the reset, the user should confirm successful sign-in, and the support ticket should document the action without storing the password.

