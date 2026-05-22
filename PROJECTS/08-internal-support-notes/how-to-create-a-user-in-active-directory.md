# How to Create a User in Active Directory

---

## Purpose

This note explains the basic support workflow for creating a new user account in Active Directory.

It is intended as an internal quick-reference note for IT support tasks.

---

## Support Context

Creating a user in Active Directory may be required when a new employee, test user, or lab account needs domain access.

The account should be created in the correct organizational unit and configured according to company naming, password, and access policies.

---

## Before You Start

Check the following before creating the user account:

- Confirm that the user account request is approved.
- Confirm the correct username and display name format.
- Confirm the correct organizational unit.
- Confirm the required account type: employee, service account, test user, or lab user.
- Confirm whether group membership or access assignment is already approved.
- Confirm the password policy requirements.
- Do not assign permissions or group membership without approval.

---

## Procedure

1. Open **Active Directory Users and Computers**.
2. Navigate to the correct organizational unit.
3. Right-click inside the organizational unit and choose **New > User**.
4. Enter the required user details, such as first name, last name, display name, and logon name.
5. Set an initial password according to company password policy.
6. Select **User must change password at next logon**, if required.
7. Save the account.
8. Verify that the user account appears in the correct organizational unit.
9. Add the user to required security groups only if approved.
10. Confirm that the account is ready for login testing or further access assignment.

---

## Common Issues

- **Wrong organizational unit:** The user may not receive the expected policies or settings.
- **Username already exists:** A duplicate or old account may need review.
- **Password is rejected:** The password may not meet complexity or history requirements.
- **Missing group membership:** The user may be able to log in but not access required resources.
- **Incorrect display name or username:** The account may need correction before being used.
- **Account disabled by default:** The account may need to be enabled if policy allows it.

---

## Escalation Triggers

Escalate the case if:

- the account request is not approved
- the correct organizational unit is unclear
- required group membership is unclear
- permissions require higher-level approval
- the account already exists and needs review
- the request involves elevated or administrative access
- the user cannot authenticate after account creation

---

## Ticket Documentation Notes

Document only support-relevant information:

- account request was approved
- created username or user ID
- organizational unit used
- account type
- whether initial password was set
- whether **User must change password at next logon** was enabled
- groups assigned, if any
- whether login testing was completed
- whether escalation was required

Do not document passwords or unnecessary personal information.
