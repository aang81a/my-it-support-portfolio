# Windows Server 2025 VM Deployment

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)  
![VM](https://img.shields.io/badge/VM-Windows%20Server%202025-blue)  
![Lab](https://img.shields.io/badge/Lab-Windows%20Client--Server-lightgrey)  

---

## Objective

Deploy Windows Server 2025 as `DC01`, the server VM for the Active Directory home lab.

---

## VM Configuration

| Component | Specification |
|---|---|
| Host OS | Windows 10 Home |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| VM Name | `DC01` |
| Guest OS | Windows Server 2025 Standard Evaluation (Desktop Experience) |
| CPU / RAM | 2 vCPUs / 4 GB |
| Virtual Disk | 80 GB |
| Firmware | EFI enabled |
| Initial Account | `Administrator` (local) |

---

## Main Steps

### 1. Create and configure the virtual machine

Created `DC01` in VirtualBox and selected the Windows Server 2025 installation ISO.

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2002%20Name.png" alt="VM name and Windows Server installation ISO" width="650">

**Initial settings:** 2 GB RAM, 1 vCPU, 50 GB disk, EFI disabled.

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2003%20Specify%20virtual%20hardware.png" alt="Initial hardware settings: 2 GB RAM, 1 vCPU, 50 GB disk; EFI disabled" width="650">

**Revised settings:** Increased to 4 GB RAM, 2 vCPUs and an 80 GB disk; enabled EFI. The additional capacity allows more room for Windows Server and the planned AD DS/DNS lab, while the selected RAM allocation remains within the 16 GB host's capacity.

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2004%20Settings.png" alt="Revised VM hardware settings: 4 GB RAM, 2 vCPUs, 80 GB disk, EFI enabled" width="650">

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2005%20Summary.png" alt="Windows Server 2025 VM configuration summary" width="650">

---

### 2. Install Windows Server 2025

Selected **Standard Evaluation (Desktop Experience)** to use the graphical Windows Server interface and Server Manager.

<img src="screenshots/31%20Select%20image%20OS.png" alt="Windows Server 2025 Standard Evaluation with Desktop Experience" width="650">

Selected the virtual disk as the installation destination and confirmed the installation.

<img src="screenshots/32%20Select%20location.png" alt="Virtual disk selected for Windows Server installation" width="650">

<img src="screenshots/33%20Before%20installation%20-%20Ready%20to%20install.png" alt="Windows Server installation settings confirmed" width="650">

<img src="screenshots/35%20Customize%20settings.png" alt="Windows Server installation settings confirmed" width="650">

---

### 3. Complete initial server configuration

Configured the local `Administrator` account and computer name `DC01` to identify the server in the lab.

<img src="screenshots/41%20Computer%20Name%20ok.png" alt="Computer name DC01 confirmed" width="650">

Set the time zone and reviewed the system properties in **Server Manager → Local Server**.

<img src="screenshots/45%20Setting%20time%20zone.png" alt="Server time zone configuration" width="650">

<img src="screenshots/46%20Server%20Manager%20Local%20Server%2003.png" alt="Server Manager local server properties" width="650">

---

### 4. Install VirtualBox Guest Additions

Installed Guest Additions to improve display and mouse integration, then verified the installation.

<img src="screenshots/48%20Installation%20Oracle%20VirtualBox%20Guest%20Addition%2003%20Components.png" alt="VirtualBox Guest Additions setup components" width="650">

<img src="screenshots/53%20DC01%20-%20VirtualBox%20Guest%20Additions%20installed.png" alt="Guest Additions installation verification" width="650">

---

### 5. Create a baseline snapshot

Saved **Clean Windows Server 2025 Baseline** before installing server roles, providing a restore point for later lab changes.

<img src="screenshots/56%20Create%20DC01%20snapshot.png" alt="Clean Windows Server 2025 Baseline snapshot" width="650">

---

## Result

Windows Server 2025 installed as `DC01`, with Guest Additions and a pre-AD DS baseline snapshot. The VM is ready for subsequent network and server-role configuration.
