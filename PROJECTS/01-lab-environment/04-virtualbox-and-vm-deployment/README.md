# VirtualBox and VM Deployment

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Platform](https://img.shields.io/badge/Platform-Oracle%20VirtualBox%207.2.22-blue)
![Environment](https://img.shields.io/badge/Environment-Windows%20Home%20Lab-lightgrey)

---

## Objective

Build a two-machine Windows virtual environment for practical IT Support Home Lab, Windows Server, Active Directory, and network troubleshooting exercises.

---

## Lab Environment

| Component | Configuration |
|---|---|
| Host OS | Windows 10 Home |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Client VM | `WIN11-CLIENT01` — Windows 11 Pro |
| Server VM | `DC01` — Windows Server 2025 Standard Evaluation |
| VM networking | Adapter 1: NAT; Adapter 2: Internal Network `AD-LAB` |
| Lab subnet | `192.168.50.0/24` |
| Server / Client IP | `192.168.50.10` / `192.168.50.20` |
| Active Directory domain | `corp.techlog.test` (`TECHLOG`) |

---

## Deployment Phases

| Phase | Work Completed | Documentation |
|---|---|---|
| 01 | Host virtualization preparation; VirtualBox and Extension Pack installation | [Oracle VirtualBox Installation and Host Preparation](virtualbox-installation/README.md) |
| 02–03 | Windows 11 Pro VM installation; Guest Additions; baseline snapshot | [Windows 11 Pro VM Deployment](windows-11-pro-installation/README.md) |
| 04 | Windows Server 2025 VM installation; Guest Additions; baseline snapshot | [Windows Server 2025 Installation](windows-server-2025/README.md) |
| 05 | `AD-LAB` networking, static IP addressing, firewall configuration and connectivity tests | [Network configuration summary](#phase-05--virtual-network-configuration) |
| 06 | AD DS and DNS installation; domain controller promotion; DNS record troubleshooting | [AD DS and DNS Deployment](ad-ds-and-dns-deployment/README.md) |

---

## Phase 05 — Virtual Network Configuration

### 1. Configure the virtual network adapters

Configured **Adapter 1: NAT** on both VMs for external connectivity and **Adapter 2: Internal Network (`AD-LAB`)** for communication between the client and server. The internal network is separate from the home LAN.

<img src="windows-server-2025/screenshots/57%20DC01%20Network%2003%20Setup%20Adapter%202.png" alt="DC01: VirtualBox Adapter 2 connected to the AD-LAB internal network" width="650">

<img src="windows-server-2025/screenshots/57%20WIN11%20Network%2003%20Setup%20Adapter%202.png" alt="WIN11-CLIENT01: VirtualBox Adapter 2 connected to the same AD-LAB network" width="650">

---

### 2. Configure static IPv4 addresses

Assigned fixed addresses on the `AD-LAB` adapters. No default gateway was configured on the internal network; NAT remains on Adapter 1.

| VM | IPv4 address | Subnet mask | Internal DNS |
|---|---|---|---|
| `DC01` | `192.168.50.10` | `255.255.255.0` | `192.168.50.10` (after DNS setup) |
| `WIN11-CLIENT01` | `192.168.50.20` | `255.255.255.0` | `192.168.50.10` |

<img src="windows-server-2025/screenshots/58%20DC01%20Server%20Manager06%20Local%20Server%20Eth2%20IPv4%20config.png" alt="DC01: static IPv4 configuration on the internal network adapter" width="650">

<img src="windows-server-2025/screenshots/59%20WIN11%20Server%20Manager%20Eth2%20IPv4%20config%20check.png" alt="WIN11-CLIENT01: verified static IPv4 configuration" width="650">

---

### 3. Configure Windows Firewall for connectivity tests

Enabled inbound **ICMPv4 Echo Request** rules on both VMs so they can respond to `ping` tests. Restricted the allowed remote IP scope to the lab network rather than permitting requests from all networks.

<img src="windows-server-2025/screenshots/63%20DC01%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20Enabled.png" alt="DC01: inbound ICMPv4 Echo Request rule enabled" width="650">

<img src="windows-server-2025/screenshots/71%20Win11%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20Properties%20Enabled.png" alt="WIN11-CLIENT01: inbound ICMPv4 Echo Request rule enabled" width="650">

<img src="windows-server-2025/screenshots/75%20DC01%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20-%20Scope%20-%20Remote%20IP.png" alt="DC01: ICMPv4 firewall rule restricted by remote IP scope" width="650">

<img src="windows-server-2025/screenshots/74%20Win11%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20-%20Scope%20-%20Remote%20IP.png" alt="WIN11-CLIENT01: ICMPv4 firewall rule restricted by remote IP scope" width="650">

---

### 4. Verify bidirectional connectivity

Tested both directions using `ping`: `WIN11-CLIENT01` → `DC01` and `DC01` → `WIN11-CLIENT01`. Both tests returned **0% packet loss** after the firewall configuration.

<img src="windows-server-2025/screenshots/64%20WIN11%20ping%200%25%20loss.png" alt="Windows 11 client ping to DC01: 0% packet loss" width="650">

<img src="windows-server-2025/screenshots/76%20DC01%20ping%200%25%20loss.png" alt="DC01 ping to Windows 11 client: 0% packet loss" width="650">

**Result:** Both VMs communicate over `AD-LAB` using their static IPv4 addresses. These tests verify IP connectivity; Active Directory and DNS functionality are verified separately.

---

## Skills Demonstrated

- Installation and configuration of Windows client and server operating systems
- Virtual machine setup and host virtualization configuration
- Windows networking: IPv4 addressing and connectivity testing
- Windows Defender Firewall rule configuration
- Windows Server role installation and Active Directory/DNS setup
- Troubleshooting and verification using recorded system evidence

---

## Current Result

VirtualBox and both guest operating systems are installed. Internal network connectivity has been tested. `DC01` has been promoted to a domain controller for `corp.techlog.test`, and its internal DNS A record has been verified as `192.168.50.10`.

**Not yet verified in this project:** Windows 11 domain join, domain authentication, and complete AD health checks.
