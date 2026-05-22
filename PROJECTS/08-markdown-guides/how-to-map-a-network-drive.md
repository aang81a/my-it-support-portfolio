# How to Map a Network Drive

---

## Purpose

This guide explains how to connect a shared folder as a network drive in Windows.

It is intended as a short internal support note for common shared folder access tasks.

---

## When to Use

Use this guide when:

- a user needs access to a shared company folder
- a mapped drive is missing in File Explorer
- IT Support provided a network path
- a shared folder should appear with a drive letter

---

## Useful Shortcuts

- `Windows + E` opens File Explorer.
- `Windows + R` opens the Run dialog.

Example network path:

```text
\\server-name\shared-folder
```

---

## Steps

1. Open File Explorer with `Windows + E`.
2. Select **This PC**.
3. Choose **Map network drive**.
4. Select a drive letter.
5. Enter the network path to the shared folder.
6. Select **Reconnect at sign-in** if the drive should stay available after restart.
7. Confirm the connection.
8. Enter domain credentials if prompted.
9. Verify that the mapped drive appears in File Explorer.
10. Open the drive and confirm that the folder opens correctly.

---

## Result

The shared folder appears as a mapped drive in File Explorer.

The user can access the shared folder if the account has the required permissions.

---

## Notes

Access depends on the assigned permissions for the user account.

If access is denied, verify the network path, VPN or office network connection, and user permissions.

Do not change folder permissions unless this is approved and within your support role.
