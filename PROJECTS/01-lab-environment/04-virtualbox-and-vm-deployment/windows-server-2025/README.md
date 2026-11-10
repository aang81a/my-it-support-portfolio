# Windows Server 2025 VM Deployment

![Status](https://img.shields.io/badge/Status-Completed-brightgreen) ![VM](https://img.shields.io/badge/VM-Windows%20Server%202025-blue)

## Objective

Deploy Windows Server 2025 as the server VM (`DC01`) for the Active Directory home lab.

## VM Configuration

| Component | Specification |
|---|---|
| Host OS | Windows 10 Home |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| VM Name | `DC01` |
| Guest OS | Windows Server 2025 Standard Evaluation (Desktop Experience) |
| Local Account | `Administrator` |

## Main Steps

### 1. Create the virtual machine

Created the server VM `DC01` and attached the Windows Server installation ISO. The VM was assigned virtual CPU, memory and disk resources.

**VM identity and installation media**

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2002%20Name.png" alt="26 Create New Virtual Machine 02 Name" width="650">

**Virtual hardware allocation**

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2003%20Specify%20virtual%20hardware.png" alt="26 Create New Virtual Machine 03 Specify virtual hardware" width="650">

### 2. Install Windows Server 2025

Selected **Windows Server 2025 Standard Evaluation (Desktop Experience)** to use the graphical Server Manager interface. Chose the unallocated virtual disk as the installation destination and confirmed the installation settings.

**Windows Server edition**

<img src="screenshots/31%20Select%20image%20OS.png" alt="31 Select image OS" width="650">

**Virtual disk selection**

<img src="screenshots/32%20Select%20location.png" alt="32 Select location" width="650">

**Installation confirmation**

<img src="screenshots/33%20Before%20installation%20-%20Ready%20to%20install.png" alt="33 Before installation — Ready to install" width="650">

### 3. Complete initial configuration

Completed the initial Administrator setup, configured the time zone and checked the server properties in **Server Manager → Local Server**. These settings identify the VM and ensure accurate system time.

<img src="screenshots/45%20Setting%20time%20zone.png" alt="45 Setting time zone" width="650">

<img src="screenshots/46%20Server%20Manager%20Local%20Server%2003.png" alt="46 Server Manager Local Server 03" width="650">

### 4. Install VirtualBox Guest Additions

Installed the VirtualBox Guest Additions components to improve display and input-device integration. Confirmed the installation in **Settings → Installed apps**.

<img src="screenshots/48%20Installation%20Oracle%20VirtualBox%20Guest%20Addition%2003%20Components.png" alt="48 Installation Oracle VirtualBox Guest Addition 03 Components" width="650">

<img src="screenshots/53%20DC01%20-%20VirtualBox%20Guest%20Additions%20installed.png" alt="53 DC01 — VirtualBox Guest Additions installed" width="650">

### 5. Create a baseline snapshot

Created the **Clean Windows Server 2025 Baseline** snapshot before installing server roles. This provides a known starting point for later lab changes.

<img src="screenshots/56%20Create%20DC01%20snapshot.png" alt="56 Create DC01 snapshot" width="650">

## Result

Windows Server 2025 Standard Evaluation (Desktop Experience) installed as `DC01`. Initial settings, Guest Additions and the baseline snapshot are documented above.
