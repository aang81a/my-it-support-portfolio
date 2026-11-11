# VirtualBox and VM Deployment — Windows IT Support Home Lab

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Platform](https://img.shields.io/badge/Platform-Oracle%20VirtualBox%207.2.22-blue)
![Environment](https://img.shields.io/badge/Environment-Windows%20Home%20Lab-lightgrey)
![Focus](https://img.shields.io/badge/Focus-VM%20Environment-blue)

## Objective

Build a Windows client–server virtual environment for hands-on IT Support, Windows administration, networking, and Active Directory practice.

## Lab Environment

| Component | Configuration |
|---|---|
| Host | HP All-in-One, Windows 10 Home, 16 GB RAM |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Client VM | `WIN11-CLIENT01` — Windows 11 Pro |
| Server VM | `DC01` — Windows Server 2025 Standard Evaluation (Desktop Experience) |
| Networking | NAT + Internal Network `AD-LAB` |
| Lab subnet | `192.168.50.0/24` |
| Server IP | `192.168.50.10` |
| Client IP | `192.168.50.20` |
| AD domain | `corp.techlog.test` (`TECHLOG`) |

## Deployment Phases

| Phase | Component | Documentation |
|---|---|---|
| 01 | VirtualBox installation and host preparation | [VirtualBox Installation](virtualbox-installation/README.md) |
| 02–03 | Windows 11 Pro installation and baseline snapshot | [Windows 11 Pro VM](windows-11-pro-installation/README.md) |
| 04 | Windows Server 2025 installation and baseline snapshot | [Windows Server 2025 VM](windows-server-2025/README.md) |
| 05 | Virtual network and connectivity configuration | [Virtual Network Configuration](virtual-network-configuration/README.md) |
| 06 | Active Directory Domain Services and DNS | [AD DS and DNS Deployment](ad-ds-and-dns-deployment/README.md) |

## Skills Demonstrated

- Virtual machine installation and configuration
- Windows client and Windows Server installation
- Virtual networking and static IPv4 configuration
- Windows Firewall configuration and connectivity verification
- Active Directory Domain Services and DNS deployment
- Technical documentation and evidence-based verification

## Current Result

Two Windows virtual machines are installed and connected through `AD-LAB`. `DC01` is configured as a domain controller for `corp.techlog.test`; its internal DNS address has been verified.

**Pending:** Windows 11 domain join, domain sign-in and comprehensive AD health checks.
