# How to Join a PC to a Domain
---

## Purpose

This guide explains how to connect a Windows computer to a domain.

It is intended as a short internal support note for IT support tasks.

---

## When to Use

Use this guide when:

- a new or reinstalled Windows computer needs to be added to the domain
- a lab client computer needs to join a test domain
- the device must use domain user accounts
- the device needs access to domain resources such as shared folders or policies

---

## Steps

1. Confirm that the device is approved to join the domain.
2. Connect the computer to the correct network.
3. Verify that DNS points to the domain controller or correct domain DNS server.
4. Check that the computer name follows the required naming convention.
5. Open the computer name and domain settings.
6. Select the option to join a domain.
7. Enter the domain name.
8. Provide domain credentials with permission to join computers to the domain.
9. Restart the computer when prompted.
10. Sign in with a domain user account after restart.
11. Confirm that the computer joined the domain successfully.

---

## Result

The computer becomes part of the domain and can be used with domain user accounts.

The device can then receive domain policies and access approved domain resources.

---

## Notes

Network connectivity and correct DNS settings are required for a successful domain join.

Do not join personal or unapproved devices to the company domain.

Use only approved technician credentials and do not store domain passwords in notes, screenshots, or tickets.

Escalate the case if the domain controller cannot be reached, DNS appears misconfigured, or the domain join fails with an unknown error.
