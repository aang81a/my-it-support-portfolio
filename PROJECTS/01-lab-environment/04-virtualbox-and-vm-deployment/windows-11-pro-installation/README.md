# Windows 11 Pro VM Installation — WIN11-CLIENT01

**Project:** TechLog Solutions — IT Support Home Lab  
**Platform:** Oracle VirtualBox 7.2.22  
**Guest OS:** Windows 11 Pro  
**Status:** Installation, Guest Additions, initial updates, and pre-domain baseline snapshot completed. Phase 05 lab-network connectivity tested. **Active Directory domain join not yet performed.**

## Objective

Deploy a Windows 11 Pro workstation to support later hands-on Windows client, Active Directory, and IT Support exercises without altering the physical Windows 10 host.

## 1. Create the virtual machine

I created `WIN11-CLIENT01` in VirtualBox using Windows 11 installation media and the manual installation workflow (unattended installation was skipped).

| Setting | Configuration |
|---|---|
| Virtual machine name | `WIN11-CLIENT01` |
| Guest operating system | Windows 11 Pro |
| Memory | 4,096 MB (4 GB) |
| Virtual processors | 2 |
| Virtual disk | 80 GB |
| Firmware | EFI enabled |

![Windows 11 installation ISO selected in VirtualBox](screenshots/01%20Choose%20%20VM%20Client%20ISO%20Windows%2011%20Pro.png)

![Windows client VM name and operating-system selection](screenshots/02%20Virtual%20machine%20name%20and%20operating%20system.png)

![VM resource allocation and EFI firmware setting](screenshots/03%20Specify%20virtual%20hardware.png)

![New client VM listed in VirtualBox Manager](screenshots/05%20Win11-Client01.png)

## 2. Install Windows 11 Pro

I booted the VM from the Windows 11 installation media and selected **Disk 0 — 80 GB Unallocated Space** as the installation destination. I did not manually create partitions. The installer later displayed the **Ready to install** page for Windows 11 Pro (**Keep nothing**).

![80 GB unallocated virtual disk space selected](screenshots/08%20Select%20location.png)

![Windows 11 Pro installation confirmation](screenshots/09%20Ready%20to%20install.png)

I then returned to the disk-selection page to check the layout. The same virtual disk now displayed three partitions created by Windows Setup: an **EFI System** partition (200 MB), an **MSR** partition (16 MB), and a **Primary** partition (approximately 79.8 GB). I asked why these had appeared. I was instructed to **select Partition 3 (Primary) and continue**, without deleting or formatting the partitions. This is why the partition screenshot was captured *after* the Ready to install screenshot; it does not indicate a second disk or a deletion procedure.

![Disk selection revisited after Windows Setup created EFI, MSR and primary partitions](screenshots/08%20Select%20location%20Partition.png)

## 3. Complete initial workstation setup

During the initial Windows setup (OOBE), I named the device `WIN11-CLIENT01` and selected **Set up for work or school → Sign-in options → Domain join instead** to create a **local account** named `LabAdmin`. Despite its wording, **Domain join instead did not join the machine to Active Directory**. The domain join is a later lab stage.

I configured the English Windows interface, selected Switzerland as the region and a Swiss German keyboard layout, skipped the additional keyboard layout, completed the privacy choices, and signed in to the Windows desktop. No account password is recorded in this documentation.

![Device naming during Windows initial setup](screenshots/13%20Name%20your%20device.png)

![Work-or-school device setup choice](screenshots/13%20Set%20up%20this%20device.png)

![Local-account setup path: Domain join instead](screenshots/13%20Sign%20in%20options%2002%20Domain%20join%20instead.png)

![Local LabAdmin account creation](screenshots/13%20Sign%20in%20options%2003%20Enter%20your%20name%20LabAdmin.png)

![Windows 11 desktop after initial setup](screenshots/14%20Installation%20finished%20-%2003%20desctop%20after%20loged%20in.png)

## 4. Verify Windows edition and update status

I checked **Settings → System → About** for the installed Windows 11 Pro edition and inspected **Windows Update → Update history**. Some initial updates were slow or failed and required further installation attempts and restarts. After later update installation and verification, Windows Update reported the machine **up to date** at the time of the screenshot. This is a recorded check, not a claim that all future or optional preview updates were installed.

![Windows About page verifying Windows 11 Pro](screenshots/16%20System%20About%2003.png)

![Windows Update history inspected](screenshots/15%201%20Update%20history.png)

![Windows Update reported up to date at the time of verification](screenshots/17%20Windows%20update%20-%20up%20to%20date.png)

## 5. Install VirtualBox Guest Additions

I mounted the Guest Additions CD image in the running VM, launched its installer, reviewed the components, and completed setup. **Settings → Apps → Installed apps** subsequently showed **Oracle VirtualBox Guest Additions 7.2.22**.

![Mounted Guest Additions media](screenshots/19%20CD%20Drive%20-%20VirtualBox%20Guest%20Additions%20-%20List.png)

![Guest Additions installation components](screenshots/21%20Oracle%20VirtualBox%20Guest%20Additions%20Setup%20choose%20components.png)

![Installed Apps confirms Guest Additions 7.2.22](screenshots/23%20Oracle%20VirtualBox%20Guest%20Additions%20installed%20-%20Installed%20Apps.png)

## 6. Save the pre-domain baseline (Phase 03)

After completing the initial guest setup, I shut down `WIN11-CLIENT01` and created a VirtualBox snapshot named **Clean Windows 11 Pro Baseline** before Active Directory integration. This provides a rollback point for lab changes; **a snapshot is not an independent backup**.

![Clean Windows 11 Pro Baseline snapshot in VirtualBox Manager](screenshots/25%20Snapshot%20Current%20state%20-%20right.png)

## 7. Subsequent lab network configuration (Phase 05)

The workstation was later given two virtual adapters: **Adapter 1 = NAT** for outbound access; **Adapter 2 = Internal Network `AD-LAB`** for private server-client communication. Its internal adapter (`Ethernet 2`) was configured with `192.168.50.20/24`, **no default gateway**, and preferred DNS `192.168.50.10` (DC01).

Windows Defender Firewall remained enabled. After enabling and scoping the appropriate ICMPv4 Echo Request inbound rules, a client-to-server `ping 192.168.50.10` succeeded with **4/4 replies, 0% packet loss**. Full network setup, failed tests, fixes, and evidence belong in the [main VM deployment README](../README.md), not duplicated here.

## Verified results and next steps

| Check | Observed result |
|---|---|
| Windows 11 Pro installation | Completed; workstation boots and signs in |
| Local `LabAdmin` account | Created during OOBE |
| Windows Update | Reported up to date at the time of capture |
| Guest Additions | Version 7.2.22 visible in Installed Apps |
| Pre-domain baseline snapshot | `Clean Windows 11 Pro Baseline` created |
| Phase 05 internal connectivity | Client → DC01 ping tested successfully |
| Domain join and domain-user sign-in | **Pending** |
| Domain Group Policy and AD support exercises | **Pending** |

**Limits:** The initial *Domain join instead* option was not a real AD domain join. The guest displayed a Windows activation reminder; activation is **not** claimed. Only completed and verified lab actions are documented as finished.

## Related documentation

- [VirtualBox and host preparation](../virtualbox-installation/README.md)
- [Windows Server 2025 setup](../windows-server-2025/README.md)
- [Main deployment and Phase 05 network troubleshooting](../README.md)

## Screenshot handling

All **19 selected Phase 02–03 screenshots** are linked above using their original filenames. These are working evidence copies: review the images for usernames, device details, or other sensitive data before publishing them publicly. The complete original archive remains in the private Library.
