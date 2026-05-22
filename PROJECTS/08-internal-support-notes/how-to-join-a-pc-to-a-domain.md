# How to Join a PC to a Domain

![Topic](https://img.shields.io/badge/Topic-Active%20Directory-0078D4?logo=microsoft&logoColor=white)

---

## Purpose

This note explains the basic support workflow for joining a Windows computer to a domain.

It is intended as an internal quick-reference note for IT support tasks.

---

## Support Context

Joining a PC to a domain may be required when a new, reinstalled, or lab Windows computer needs to use domain user accounts and access domain resources.

A successful domain join depends on network connectivity, correct DNS configuration, an approved device, and credentials with permission to join computers to the domain.

---

## Before You Start

Check the following before joining the PC to the domain:

- Confirm that the device is approved to join the domain.
- Confirm that the computer is connected to the correct network.
- Verify that DNS points to the domain controller or correct domain DNS server.
- Confirm the correct domain name.
- Check that the computer name follows the required naming convention.
- Confirm that you have credentials with permission to join computers to the domain.
- Do not use or store domain administrator passwords in notes, screenshots, or tickets.

---

## Procedure

1. Connect the computer to the correct network.
2. Verify IP and DNS configuration.
3. Confirm that the domain controller or domain DNS server is reachable.
4. Check and adjust the computer name if required.
5. Open the computer name and domain settings.
6. Select the option to join a domain.
7. Enter the domain name.
8. Provide domain credentials with permission to join computers to the domain.
9. Confirm the domain join.
10. Restart the computer when prompted.
11. Sign in with a domain user account after restart.
12. Confirm that the computer joined the domain successfully.

---

## Common Issues

- **Domain cannot be found:** DNS may not point to the correct domain DNS server.
- **Credentials are rejected:** The account may not have permission to join computers to the domain.
- **Computer account already exists:** An existing device object may need review before continuing.
- **Wrong computer name:** The device may not follow the required naming convention.
- **Login fails after restart:** The domain controller may not be reachable, or the username format may be incorrect.
- **Policies do not apply:** Group Policy may need time to update, or the device may need another restart.

---

## Escalation Triggers

Escalate the case if:

- the domain controller cannot be reached
- DNS appears misconfigured
- the domain join fails with an unknown error
- the computer account already exists and causes conflicts
- the user cannot authenticate after domain join
- Group Policy or domain permissions require higher-level review
- higher-level credentials are required

---

## Ticket Documentation Notes

Document only support-relevant information:

- device name
- domain name
- network connection type
- DNS check result
- whether domain join was successful
- whether restart was completed
- whether domain user login was tested
- any error message shown
- whether escalation was required

Do not document domain administrator passwords or temporary credentials.
