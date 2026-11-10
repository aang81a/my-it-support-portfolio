# Windows 11 Pro VM Deployment — WIN11-CLIENT01

**Project:** IT Support Home Lab  
**Platform:** Oracle VirtualBox 7.2.22  
**Scope:** Windows 11 Pro installation, initial configuration, verification, and clean baseline snapshot  
**Status:** Completed — prepared for subsequent Active Directory integration

## Objective

Deploy a Windows 11 Pro virtual workstation for repeatable client administration and IT Support exercises. Establish a verified, recoverable baseline before joining the workstation to the lab domain.

## Environment and configuration

| Component | Configuration |
|---|---|
| Host OS | Windows 10 Home |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| VM name | `WIN11-CLIENT01` |
| Guest OS | Windows 11 Pro |
| RAM | 4 GB (4,096 MB) |
| Virtual CPUs | 2 |
| Virtual disk | 80 GB |
| Firmware | EFI |
| Initial user account | Local account: `LabAdmin` |

## 1. Create the virtual machine

Created `WIN11-CLIENT01` in VirtualBox using the Windows 11 installation ISO. Configured the virtual hardware and selected a manual installation instead of unattended setup.

![Windows 11 installation ISO](screenshots/01%20Choose%20%20VM%20Client%20ISO%20Windows%2011%20Pro.png)

![VM name and operating system](screenshots/02%20Virtual%20machine%20name%20and%20operating%20system.png)

![Virtual hardware configuration](screenshots/03%20Specify%20virtual%20hardware.png)

![WIN11-CLIENT01 created in VirtualBox](screenshots/05%20Win11-Client01.png)

**Verification:** The new VM appeared in VirtualBox Manager with the configured resources.

## 2. Install Windows 11 Pro

Booted from the installation ISO and selected the 80 GB virtual disk. Windows Setup initially displayed the disk as unallocated space. During the installation workflow, Setup created the required EFI System, Microsoft Reserved (MSR), and primary partitions. Continued installation using the primary partition without manually formatting or deleting the generated partitions.

The screenshots below follow the recorded capture sequence; the partition-selection screen was revisited during setup.

![Initial installation target: 80 GB unallocated virtual disk](screenshots/08%20Select%20location.png)

![Windows 11 Pro installation confirmation](screenshots/09%20Ready%20to%20install.png)

![Windows Setup partitions: EFI, MSR, and primary](screenshots/08%20Select%20location%20Partition.png)

**Verification:** Windows installation completed and the initial device setup started.

## 3. Configure Windows 11

Completed the Windows out-of-box experience (OOBE), including regional and keyboard settings, device naming, and initial privacy settings. Used the **work or school** setup path and **Sign-in options → Domain join instead** to configure the local `LabAdmin` account. This option creates a local account; it does **not** join the device to an Active Directory domain.

![Windows device-name configuration](screenshots/13%20Name%20your%20device.png)

![Work or school setup selection](screenshots/13%20Set%20up%20this%20device.png)

![Local account setup option](screenshots/13%20Sign%20in%20options%2002%20Domain%20join%20instead.png)

![Local LabAdmin account creation](screenshots/13%20Sign%20in%20options%2003%20Enter%20your%20name%20LabAdmin.png)

![Windows 11 desktop following initial configuration](screenshots/14%20Installation%20finished%20-%2003%20desctop%20after%20loged%20in.png)

**Verification:** Successfully signed in to the Windows 11 desktop using the local account.

## 4. Verify the operating system and updates

Checked **Settings → System → About** to confirm the installed Windows edition. Reviewed Windows Update history, applied available updates, and completed the required restarts. The final Windows Update check displayed **You're up to date** at the time of verification.

![Installed Windows edition and system information](screenshots/16%20System%20About%2003.png)

![Windows Update history](screenshots/15%201%20Update%20history.png)

![Final Windows Update status](screenshots/17%20Windows%20update%20-%20up%20to%20date.png)

**Verification:** Windows 11 Pro confirmed in system information; Windows Update displayed an up-to-date status at the recorded check.

## 5. Install VirtualBox Guest Additions

Mounted the VirtualBox Guest Additions ISO inside the VM, ran the installer, and completed setup. Verified the installation in **Settings → Apps → Installed apps**, where **Oracle VirtualBox Guest Additions 7.2.22** was listed.

![Mounted Guest Additions installation media](screenshots/19%20CD%20Drive%20-%20VirtualBox%20Guest%20Additions%20-%20List.png)

![Guest Additions setup components](screenshots/21%20Oracle%20VirtualBox%20Guest%20Additions%20Setup%20choose%20components.png)

![Guest Additions verified in Installed apps](screenshots/23%20Oracle%20VirtualBox%20Guest%20Additions%20installed%20-%20Installed%20Apps.png)

**Verification:** Guest Additions version 7.2.22 appeared in the installed applications list.

## 6. Create a clean baseline snapshot — Phase 03

After completing installation and initial verification, created the VirtualBox snapshot **`Clean Windows 11 Pro Baseline`** before domain integration. The snapshot provides a rollback point for subsequent lab configuration; it is not a substitute for an independent backup.

![Clean Windows 11 Pro Baseline snapshot](screenshots/25%20Snapshot%20Current%20state%20-%20right.png)

**Verification:** The snapshot was present in VirtualBox Manager.

## Verification summary

| Control | Result |
|---|---|
| Windows 11 Pro installed | Passed — OS booted successfully |
| Local workstation account | Passed — `LabAdmin` sign-in completed |
| Windows edition | Passed — verified in System > About |
| Windows updates | Passed — up-to-date status captured |
| VirtualBox Guest Additions | Passed — version 7.2.22 listed |
| Pre-domain baseline snapshot | Passed — snapshot created |
| Active Directory domain join | Not part of this deployment phase |

## Next stage

Configure the private `AD-LAB` virtual network and integrate `WIN11-CLIENT01` with the Windows Server 2025 domain controller. Network connectivity tests and domain services are documented in their respective deployment sections, rather than repeated here.

## Related documentation

- [VirtualBox installation and host preparation](../virtualbox-installation/README.md)
- [Windows Server 2025 deployment](../windows-server-2025/README.md)
- [VM deployment overview](../README.md)
