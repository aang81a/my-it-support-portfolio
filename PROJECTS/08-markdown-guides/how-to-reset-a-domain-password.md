# How to Reset a Domain Password

---

## Purpose

This guide explains the basic process for resetting a user password in an Active Directory environment.

It is intended as a short internal support note for IT support tasks.

---

## When to Use

Use this guide when:

- a user forgot their domain password
- a user cannot sign in with their domain account
- a user account is locked after failed login attempts
- a temporary password needs to be issued

---

## Steps

1. Verify the user’s identity according to company policy.
2. Open **Active Directory Users and Computers**.
3. Locate the correct user account.
4. Check whether the account is locked, disabled, or expired.
5. Right-click the account and select **Reset Password**.
6. Enter a temporary password that follows company password policy.
7. Select **User must change password at next logon**, if required.
8. Confirm the change.
9. Ask the user to sign in with the temporary password.
10. Confirm that the user can log in successfully.

---

## Result

The user receives a temporary password and can set a new password at the next sign-in.

The account status and successful login should be confirmed before closing the support case.

---

## Notes

Password reset procedures should follow company policy and security requirements.

Do not ask for or document the user’s current password.

Do not store temporary passwords in tickets, screenshots, or notes.

Escalate the case if the account is disabled, suspicious activity is visible, or the user cannot be verified.
