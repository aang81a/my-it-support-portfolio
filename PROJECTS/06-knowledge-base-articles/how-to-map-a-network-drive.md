# How to Map a Network Drive

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Knowledge%20Base%20Article-blueviolet)
![Audience](https://img.shields.io/badge/Audience-End%20Users%20%7C%20IT%20Support-lightgrey)
![Topic](https://img.shields.io/badge/Topic-Network%20Drive%20Access-blue)

---

*Knowledge Base Article*

**Article ID:** KB-1005  
**Category:** General Support / Network Drive Access  
**Audience:** End users / IT support  
**Last Updated:** May 2026  

---

## Purpose

This knowledge base article explains how to map a network drive on a Windows computer.

A mapped network drive allows users to access shared company folders from File Explorer, if they have the correct network connection and permissions.

---

## When to Use This Guide

Use this guide if:

- you need access to a shared company folder
- IT Support gave you a shared folder path
- a network drive is missing from File Explorer
- you are connected to the company network or VPN
- you need to reconnect a shared drive after changing device or login

---

## Before You Start

Check these basic points first:

- Make sure your computer is connected to the company network.
- If you are working from home, connect to the company VPN first.
- Make sure you have the correct shared folder path.
- Make sure you have permission to access the shared folder.
- Contact IT Support if you do not know the correct path.

Example shared folder path:

```text
\\server-name\shared-folder
```

---

## Step 1 – Open File Explorer

1. Press `Windows + E`.
2. File Explorer will open.
3. Select **This PC** from the left side.

---

## Step 2 – Open Map Network Drive

1. In File Explorer, select **This PC**.
2. Click **Map network drive**.
3. If you do not see the option, click the three dots or the toolbar menu and look for **Map network drive**.

---

## Step 3 – Choose a Drive Letter

1. Select a drive letter from the list.
2. Use the drive letter recommended by IT Support, if one was provided.

Example:
```text
Z:
```

---

## Step 4 – Enter the Folder Path

1. In the **Folder** field, enter the shared folder path.

Example:
```text
\\server-name\shared-folder
```

2. Make sure the path is typed exactly as provided.
3. Select **Reconnect at sign-in** if the drive should be available after restarting the computer.
4. Click **Finish**.

---

## Step 5 – Enter Credentials if Required

If Windows asks for credentials:

1. Enter your company username.
2. Enter your company password.
3. Click **OK**.

Depending on the company setup, the username format may look like:

```text
DOMAIN\username
```

or:

```text
username@company.local
```

Do not share your password with anyone. If you are unsure which login format to use, contact IT Support.

---

## Step 6 – Verify the Network Drive

After mapping the drive:

1. Open File Explorer `Windows Key + E`.
2. Go to **This PC**.
3. Check whether the mapped drive is visible.
4. Open the mapped drive.
5. Confirm that you can see the expected folders or files.

If you can open the drive and see the correct content, the network drive is connected successfully.

---

## Troubleshooting

### The shared folder path does not work

Check:

- whether the path is typed correctly
- whether the computer is connected to the company network
- whether VPN is connected if you are working remotely
- whether the server name or shared folder name is correct

Contact IT Support if the path still does not work.

### Access is denied

Access denied usually means your account does not have permission to open the shared folder.

Contact IT Support and include:

- the shared folder path
- the error message
- your username
- whether you are connected to VPN or office network

Do not try to change permissions yourself.

### The network drive disappears after restart

Check:

- whether **Reconnect at sign-in** was selected
- whether VPN is connected before opening the drive
- whether the company network is available
- whether your password has recently changed

If the drive still disappears, contact IT Support.

### The drive is visible but does not open

Try these steps:

- disconnect and reconnect the VPN
- restart File Explorer
- restart the computer
- check whether other company resources are accessible
- contact IT Support if the issue continues

---

## When to Contact IT Support

Contact IT Support if:

- you do not know the shared folder path
- access is denied
- the mapped drive does not appear
- the drive appears but does not open
- you are unsure which credentials to use
- the issue continues after reconnecting VPN and restarting the computer

---

## Information to Give IT Support

When contacting IT Support, include:

- your device name, if known
- the shared folder path
- the drive letter you tried to use
- whether you are using VPN or office network
- the exact error message, if shown
- when the issue started
- steps you already tried

Example message:

```text
Hello IT Support,

I cannot access the shared network drive.
I tried to map the drive using the path \\server-name\shared-folder, but I receive an access denied message.
I am connected to the company VPN.

Thank you.
```

---

## Security Notes
- Do not share your company password.
- Do not save passwords on shared or untrusted devices.
- Access only shared folders required for your work.
- Do not change folder permissions yourself.
- Report unexpected access to confidential folders to IT Support.

---

## Summary

To map a network drive, open File Explorer, select This PC, choose Map network drive, enter the shared folder path, select a drive letter, and sign in if required.

If the drive does not connect, check VPN, network access, the folder path, and permissions before contacting IT Support.
