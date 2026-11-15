# Active Directory & Identity Management

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Focus](https://img.shields.io/badge/Focus-Active%20Directory%20%26%20Identity%20Management-purple)
![Platform](https://img.shields.io/badge/Platform-Windows%20Server%202025-blue)

---

## Overview

This project focuses on practical identity management and account administration in the **TechLog Solutions** Active Directory home lab, using scenarios based on common IT Support and Service Desk tasks.

---

## Lab Environment

| Component | Configuration |
|---|---|
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Domain Controller | `DC01` — Windows Server 2025 Standard Evaluation |
| Client workstation | `WIN11-CLIENT01` — Windows 11 Pro |
| Active Directory domain | `corp.techlog.test` |
| NetBIOS name | `TECHLOG` |
| Internal network | `AD-LAB` — `192.168.50.0/24` |
| Domain Controller IP | `192.168.50.10` |
| Windows 11 client IP | `192.168.50.20` |
| Administration tools | Active Directory Users and Computers (ADUC), Server Manager, DNS Manager, PowerShell |

The underlying virtual infrastructure, operating system installations, and network configuration are documented in [Lab Environment](../01-lab-environment/04-virtualbox-and-vm-deployment/README.md).

---

## Projects

The following projects are organized in the order of implementation.

| Project | Status |  
|---|---|  
| [AD DS and Domain Controller](ad-ds-and-domain-controller/README.md) | Completed ✅ |  
| [Domain Join and Computer Accounts](domain-join-and-computer-accounts/README.md) | Completed ✅ |   
| [OU, User and Group Management](ou-user-and-group-management/README.md) | Completed ✅ |     
| Password Reset and Account Lockout | Planned |   
| Employee Onboarding, Offboarding and Role Changes | Planned |   
| AD Recycle Bin and Recovery | Planned |   

---

## Skills Demonstrated

- Active Directory Domain Services (AD DS)
- Windows domain integration and authentication
- Organizational Unit (OU) management
- User account provisioning and administration
- Global Security group management
- Group membership verification
- Active Directory computer account management
- PowerShell-based domain joining
- DNS troubleshooting and configuration verification
- Standard domain-user authentication and initial password change
- Configuration verification

---

## Skills Demonstrated

- Windows 11 Pro domain integration
- Active Directory computer account provisioning
- DNS and IPv4 configuration verification
- PowerShell `Add-Computer`
- Domain authentication
- Active Directory Users and Computers (ADUC)
- Configuration verification and evidence collection

---

## Related Projects

- [01 Lab Environment](../../01-lab-environment/04-virtualbox-and-vm-deployment/README.md) - VirtualBox infrastructure, Windows deployment and virtual networking
- [07 Ticketing Practice](../../07-ticketing-practice/) - IT Support incidents and service requests
- [10 Windows Server Administration](../../10-windows-server-administration/) - Windows Server roles and services
- [11 AD DS and Domain Controller](../ad-ds-and-domain-controller/README.md) - Active Directory infrastructure overview
- [11 OU, User and Group Management](../ou-user-and-group-management/README.md) - Organizational structure and identity administration
- [12 — Access Management and Endpoint Security](../12-access-management-and-endpoint-security/README.md) — Group Policy, security groups, and NTFS permissions
- [13 — Microsoft 365 and Entra ID](../13-microsoft-365-and-entra-id/) — Cloud identity management

