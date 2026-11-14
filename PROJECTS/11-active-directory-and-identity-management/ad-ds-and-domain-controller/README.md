# Active Directory & Identity Management

## Overview

Hands-on Active Directory Domain Services (AD DS) administration in the **TechLog Solutions** virtual home lab, focused on identity-management tasks encountered in Junior IT Support and Service Desk roles.

**Status:** Planned — AD DS and DNS deployed; practical identity-management exercises pending.

## Lab Environment

| Component | Purpose |
| --- | --- |
| Windows Server 2025 (`DC01`) | Domain Controller for `corp.techlog.test`; AD DS and DNS installed and server-side DNS resolution verified |
| Windows 11 Pro (`WIN11-CLIENT01`) | Client workstation prepared for domain join, authentication and client-side verification |
| Oracle VirtualBox 7.2.22 | Local virtualization platform |
| TechLog Solutions | Fictional business environment for realistic support cases |

**Domain:** `corp.techlog.test`  
**NetBIOS name:** `TECHLOG`  
**Internal network:** `AD-LAB` (`192.168.50.0/24`)  
**Domain Controller IP:** `192.168.50.10`  
**Windows 11 client IP:** `192.168.50.20`

Infrastructure deployment, AD DS installation and initial DNS configuration are documented in `01-lab-environment/04-virtualbox-and-vm-deployment/`.

Group Policy and file-permission exercises belong in `12-access-management-and-endpoint-security/`.

## Practical Exercises

- [x] Install AD DS and promote `DC01` to a Domain Controller.
- [ ] Create departmental organizational units (OUs) and establish naming conventions.
- [ ] Create, locate and modify users, groups and computer objects.
- [ ] Join `WIN11-CLIENT01` to `corp.techlog.test` and verify user authentication.
- [ ] Manage security-group membership and verify user properties.
- [ ] Perform password resets and troubleshoot account lockouts.
- [ ] Investigate disabled and expired user accounts.
- [ ] Test temporary-account expiration and access restoration.
- [ ] Simulate employee onboarding, role change and offboarding.
- [ ] Enable AD Recycle Bin and test recovery of a deleted test account.
- [ ] Optionally test a dedicated service account and document its purpose and restrictions.

**Infrastructure verification:** AD DS installation, Domain Controller promotion, DNS zone creation and server-side name resolution have been verified. Comprehensive AD health checks and Windows 11 domain integration remain pending.

## Business Scenarios

| Scenario | Planned demonstration |
| --- | --- |
| Anna Usher — onboarding | Create an employee identity, assign the appropriate group membership and verify login |
| Anna Usher — role change | Update identity details and group membership; validate new access through the separate access-management lab |
| Mark Callingback — account lockout | Investigate an authentication failure, unlock the account and verify sign-in |
| Employee offboarding | Disable the account, remove access and record the result |

These are test identities; no real employee information is used.

## Verification & Evidence

For each completed practical exercise, record:

1. Initial condition and intended outcome.
2. Administrative actions and tools used (e.g., ADUC, ADAC or PowerShell).
3. Verification from the server and, where relevant, the Windows 11 client.
4. Result, screenshot(s) and any troubleshooting performed.

**Evidence status:** Infrastructure deployment evidence completed and documented in Project 01. Practical identity-management exercises are pending.

## Related Projects

- [01 — Lab Environment](../01-lab-environment/) — VirtualBox, VM deployment, AD DS installation and DNS configuration
- [07 — Ticketing Practice](../07-ticketing-practice/) — Related incidents and service requests
- [10 — Windows Server Administration](../10-windows-server-administration/) — Windows Server roles, DNS and DHCP
- [12 — Access Management and Endpoint Security](../12-access-management-and-endpoint-security/) — Group Policy and permissions
- [13 — Microsoft 365 and Entra ID](../13-microsoft-365-and-entra-id/) — Future cloud identity labs

## Related Documentation

- [AD DS and DNS Deployment — Phase 06](../01-lab-environment/04-virtualbox-and-vm-deployment/ad-ds-and-dns-deployment/README.md)
- [Windows Server 2025 VM Deployment](../01-lab-environment/04-virtualbox-and-vm-deployment/windows-server-2025/README.md)
- [Windows 11 Pro VM Deployment](../01-lab-environment/04-virtualbox-and-vm-deployment/windows-11-pro-installation/README.md)
- [Virtual Network Configuration](../01-lab-environment/04-virtualbox-and-vm-deployment/virtual-network-configuration/README.md)
