# How to Join a PC to a Domain

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-Knowledge%20Base%20Article-blue)
![Audience](https://img.shields.io/badge/Audience-IT%20Support-lightgrey)
![Topic](https://img.shields.io/badge/Topic-Domain%20Join-blue)

---

*Knowledge Base Article*

**Article ID:** KB-1004  
**Category:** Internal IT Support / Domain Access  
**Audience:** IT Support / Lab Use  
**Last Updated:** May 2026  

---

## Purpose

This knowledge base article explains the basic process for joining a Windows PC to a domain.

The steps are intended for IT support or lab use. This task should only be performed when the device is approved for domain use and the technician has the correct permissions.

---

## When to Use This Guide

Use this guide if:

- a new company PC needs to be joined to the domain
- a lab client computer needs to be connected to a test domain
- the device must use domain user accounts
- the device needs access to domain resources, such as shared folders or policies
- IT Support has confirmed that domain join is required

---

## Before You Start

Check these points first:

- The PC is connected to the correct network.
- The domain controller is reachable.
- DNS is configured correctly for the domain environment.
- You know the correct domain name.
- You have an account with permission to join computers to the domain.
- The computer name follows the required naming convention.
- The device has been approved for domain use.

---

## Step 1 – Check Network Connection

Before joining the domain, confirm that the PC is connected to the correct network.

1. Connect the PC using Ethernet or the approved Wi-Fi network.
2. Open Command Prompt.
3. Check the IP configuration:

```text
ipconfig
```

4. Confirm that the device has a valid IP address, subnet mask, default gateway, and DNS server.

If the device is on the wrong network or has incorrect DNS settings, fix the network configuration before continuing.

---

## Step 2 – Check the Computer Name

1. Open Settings.
2. Go to System.
3. Open About.
4. Check the current device name.

If needed, rename the computer before joining it to the domain.

Use a clear company or lab naming convention, for example:

```text
PC-ZH-001
LAB-CLIENT-01
```

Restart the computer if Windows requires it after renaming.

---

## Step 3 – Open Domain Join Settings

1. Open Settings.
2. Go to System.
3. Open About.
4. Select Domain or workgroup / Advanced system settings.
5. Open the Computer Name tab.
6. Click Change.

---

## Step 4 – Join the Domain

1. Under Member of, select Domain.
2. Enter the domain name.

Example:

```text
company.local
```

or for a lab environment:

```text
lab.local
```

3. Click OK.
4. Enter domain credentials when prompted.
5. Wait for the confirmation message.

If the domain join is successful, Windows shows a welcome message for the domain.

---

## Step 5 – Restart the Computer

After the domain join is complete:

1. Save any open work.
2. Restart the computer.
3. Wait until the restart is complete.

The restart is required so the PC can apply domain membership settings.

---

## Step 6 – Sign In with a Domain Account

After restart:

1. Select **Other user** on the sign-in screen.
2. Enter the domain username.

Example:

```text
DOMAIN\username
````

or:

```text
username@domain.local
````

3. Enter the password.
4. Sign in.

If the login works, the PC has successfully joined the domain and can authenticate domain users.

---

## Step 7 – Verify Domain Access

After signing in, check that the device works correctly in the domain environment.

Examples:

- confirm that the domain user can sign in
- check that the correct computer name appears
- check access to shared folders, if required
- check whether domain policies apply
- confirm network access to required internal resources

---

## Troubleshooting

### The domain cannot be found

Check:

- the PC is connected to the correct network
- the DNS server points to the domain environment
- the domain name is typed correctly
- the domain controller is reachable

Useful command:

```text
ipconfig /all
```

### Credentials are not accepted

Check:

- the username is typed correctly
- the password is correct
- the account has permission to join computers to the domain
- the account is not locked or expired

### The PC joins the domain but login fails

Check:

- the computer was restarted after domain join
- the domain username format is correct
- the domain controller is reachable
- the user account is active

### Shared folders are not accessible

Check:

- the user has permission to access the shared folder
- the PC is connected to the company network or VPN
- the correct network drive path is used
- group membership or permissions are correct

---

## When to Escalate

Escalate the case if:

- the domain controller cannot be reached
- DNS appears misconfigured
- the domain join fails with an unknown error
- the user account cannot authenticate
- the device account already exists and causes conflicts
- Group Policy or domain permissions need higher-level review

---

## Information to Document

Document the following details in the support ticket:

- device name
- user account used for testing
- domain name
- network connection type
- whether domain join was successful
- any error message shown
- troubleshooting steps already tried
- whether escalation was required

Example ticket note:

```text
Device was joined to the domain successfully. Network connection and DNS configuration were checked before domain join.
After restart, domain user login was tested successfully. No escalation required.
```

---

## Security Notes

- Do not join personal or unapproved devices to the company domain.
- Use only approved administrator or technician credentials.
- Do not share domain administrator passwords.
- Do not store passwords in notes, screenshots, or tickets.
- Confirm that the device is approved before joining it to the domain.
- Follow the company naming convention and device onboarding process.

---

## Summary

To join a PC to a domain, first confirm the network connection, DNS configuration, computer name, and required permissions.

After joining the domain, restart the computer, sign in with a domain account, verify access, and document the result in the support ticket.
