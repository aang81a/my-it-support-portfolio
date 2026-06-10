# How to Map a Network Drive
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-SOP-purple)
![Topic](https://img.shields.io/badge/Topic-Network%20Drive%20Access-blue)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)

---

<table>
<tr>
<td width="300">
<img src="../../../IMAGES/01/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td>
<em>Internal IT Support Incident Report</em>
</td>
</tr>
</table>

**Document ID:** `NET-1001`  
**Category:** Network Support / Shared Drive Access  
**Target Audience:** IT Support / Service Desk  
**Last Updated:** May 2026

---

## Purpose

This note explains the basic support workflow for connecting a shared folder as a mapped network drive in Windows.

It is intended as an internal quick-reference note for common shared folder access tasks.

---

## Support Context

Mapping a network drive may be required when a user needs access to a shared company folder through File Explorer.

Successful access depends on the correct network path, network or VPN connection, and user permissions for the shared folder.

---

## Before You Start

Check the following before mapping the network drive:

- Confirm that the user has a valid business reason to access the shared folder.
- Confirm that the correct network path was provided.
- Confirm whether the user is connected to the office network or VPN.
- Confirm that the user account has permission to access the shared folder.
- Confirm which drive letter should be used, if company standards define one.
- Do not change shared folder permissions unless this is approved and within your support role.

---

## Useful Shortcuts

- `Windows + E` opens File Explorer.
- `Windows + R` opens the Run dialog.

Example network path:

```text
\\server-name\shared-folder
```

---

## Procedure

1. Open File Explorer with `Windows + E`.
2. Select **This PC**.
3. Choose **Map network drive**.
4. Select the required drive letter.
5. Enter the network path to the shared folder.
6. Select **Reconnect at sign-in** if the drive should stay available after restart.
7. Confirm the connection.
8. Enter domain credentials if prompted.
9. Verify that the mapped drive appears in File Explorer.
10. Open the drive and confirm that the expected folder content is accessible.

---

## Common Issues

- **Access is denied:** The user account may not have permission for the shared folder.
- **Network path is not found:** The path may be typed incorrectly, the server may be unreachable, or VPN may not be connected.
- **Drive disappears after restart:** **Reconnect at sign-in** may not be enabled, or VPN/network access may not be available at login.
- **Credentials are rejected:** The username format or password may be incorrect.
- **Folder opens slowly:** Network performance, VPN connection, or server response time may be involved.
- **Wrong folder content appears:** The wrong shared path may have been used.

---

## Escalation Triggers

Escalate the case if:

- the shared folder path is unknown or unclear
- access permissions need to be changed
- the file server cannot be reached
- multiple users cannot access the same shared folder
- the user needs access to restricted or confidential data
- the issue appears related to network, VPN, server, or permissions management

---

## Ticket Documentation Notes

Document only support-relevant information:

- affected user
- device name, if known
- shared folder path
- drive letter used
- whether the user was on office network or VPN
- whether the mapped drive was created successfully
- any error message shown
- whether access was verified
- whether escalation was required

Do not document user passwords or unnecessary sensitive folder contents.

---

## Security Notes

- Map only approved shared folders.
- Do not change folder permissions without approval.
- Do not document user passwords or sensitive folder contents.
- Confirm VPN or company network access before troubleshooting permissions.
- Escalate access to restricted or confidential folders.
