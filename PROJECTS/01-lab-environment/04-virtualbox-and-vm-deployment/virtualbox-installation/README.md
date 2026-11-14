# Oracle VirtualBox Installation and Host Preparation

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Tool](https://img.shields.io/badge/Tool-Oracle%20VirtualBox%207.2.22-blue)

## Objective

Prepare the Windows 10 host for an isolated IT Support home lab by enabling hardware virtualization, installing Oracle VirtualBox, and verifying the matching Extension Pack.

The environment will support Windows 11 Pro, Windows Server 2025, Active Directory, networking, and practical IT Support exercises.

---

## Configuration

| Component | Specification |
|---|---|
| Project | TechLog Solutions — IT Support Home Lab |
| Host | HP Pavilion All-in-One |
| Host OS | Windows 10 Home |
| Processor | Intel Core i5-9400T |
| Memory | 16 GB RAM |
| Storage | HDD |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Extension Pack | Oracle VirtualBox Extension Pack 7.2.22 |
| Virtual machines | WIN11-CLIENT01 and DC01 |

---

## 1. Enable Hardware Virtualization

### Initial diagnosis

I checked **Task Manager → Performance → CPU** and found that hardware virtualization was disabled.

![Task Manager showing virtualization disabled](screenshots/01%20Virtualization%20disabled.png)

### BIOS configuration

1. Restarted the host and entered the HP BIOS/UEFI configuration.
2. Located **Intel Virtualization Technology**.
3. Changed the setting from **Disabled** to **Enabled**.
4. Saved the configuration and restarted Windows.

**Before:**

![Intel Virtualization Technology disabled in BIOS](screenshots/04%20Enable%20Intel%20Virtualization%20in%20BIOS.png)

**After:**

![Intel Virtualization Technology enabled in BIOS](screenshots/07%20Enable%20Intel%20Virtualization%20in%20BIOS.png)

### Verification

I reopened Task Manager and confirmed **Virtualization: Enabled**.

![Task Manager confirming virtualization enabled](screenshots/02%20Virtualization%20enabled.png)

**Result:** Hardware-assisted virtualization was successfully enabled and independently verified in Windows.

---

## 2. Install Oracle VirtualBox

1. Obtained Oracle VirtualBox from the official distribution.
2. Launched the **VirtualBox 7.2.22** installer.
3. Reviewed the installation components and available disk space.
4. Reviewed installer warnings, including possible temporary network interruption during installation.
5. Completed the installation.
6. Launched Oracle VirtualBox Manager.

### Installation evidence

**Installation options and disk-space check:**

![VirtualBox installation disk-space check](screenshots/Installing%20VirtualBox%2002%20Disk%20Space%20checking.png)

**Installer warnings:**

![VirtualBox installation warnings](screenshots/Installing%20VirtualBox%2003%20warnings.png)

**Installation completed:**

![VirtualBox installation completed](screenshots/Installing%20VirtualBox%2006%20Oracle%20VirtualBox%20intalled.png)

**VirtualBox Manager launched successfully:**

![Oracle VirtualBox Manager](screenshots/Installing%20VirtualBox%2007%20VirtualBox%20Manager.png)

**Result:** Oracle VirtualBox 7.2.22 was installed successfully, and VirtualBox Manager opened.

---

## 3. Install the Matching Extension Pack

1. Obtained the Oracle VirtualBox Extension Pack matching version **7.2.22**.
2. Installed it through VirtualBox's Extension Pack management interface.
3. Verified that the matching Extension Pack was listed as installed.

![Oracle VirtualBox Extension Pack installed](screenshots/Installing%20VirtualBox%2008%20install%20extension%20pack%20end.png)

**Result:** VirtualBox and its Extension Pack use matching versions.

---

## Verification and Result

| Check | Verified result |
|---|---|
| Hardware virtualization | Enabled in BIOS and confirmed in Task Manager |
| Oracle VirtualBox | Version 7.2.22 installed |
| VirtualBox Manager | Launched successfully |
| Extension Pack | Matching version 7.2.22 installed |
| VM deployment readiness | Host prepared for Windows 11 Pro and Windows Server 2025 |

**Final result:** Hardware virtualization was enabled, Oracle VirtualBox and its matching Extension Pack were installed, and the host was ready for virtual machine deployment.

Both `WIN11-CLIENT01` and `DC01` were subsequently created and tested in the following deployment phases.

---

## Related Documentation

- [Windows 11 Pro VM Installation](../windows-11-pro-installation/README.md)
- [Windows Server 2025 VM Installation](../windows-server-2025/README.md)
- [Virtual Network Configuration](../virtual-network-configuration/README.md)
- [AD DS and DNS Deployment](../ad-ds-and-dns-deployment/README.md)
