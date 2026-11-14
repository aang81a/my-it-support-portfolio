
# Windows 11 Pro VM Deployment

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Windows%20Clients-blue)
![VM](https://img.shields.io/badge/VM-Windows%2011%20Pro-blue)

---

## Objective

Deploy and configure a Windows 11 Pro virtual machine as a client workstation for the TechLog Solutions IT Support Home Lab.

Prepare the workstation with a local administrator account, Windows updates, VirtualBox Guest Additions, and a clean baseline snapshot before integration into the Active Directory environment.

---

## Configuration

| Component | Specification |
|---|---|
| Host OS | Windows 10 Home |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| VM name | `WIN11-CLIENT01` |
| Guest OS | Windows 11 Pro |
| CPU / RAM | 2 vCPUs / 4 GB |
| Virtual disk | 80 GB |
| Firmware | EFI |
| Local administrator | `LabAdmin` |
| Guest Additions | Version 7.2.22 |
| Baseline snapshot | `Clean Windows 11 Pro Baseline` |
| Lab domain | `corp.techlog.test` — domain join pending |

---

## Deployment

### 1. Create the Virtual Machine

1. Selected the official Windows 11 installation ISO in VirtualBox Manager.
2. Created the VM named `WIN11-CLIENT01`.
3. Selected the manual installation workflow.
4. Allocated **4 GB RAM, 2 virtual CPUs, and an 80 GB virtual disk**.
5. Configured EFI firmware and verified that the VM appeared in VirtualBox Manager.

**Installation ISO:**

<img src="screenshots/01%20Choose%20%20VM%20Client%20ISO%20Windows%2011%20Pro.png" alt="Windows 11 installation ISO selected" width="650">

**VM name and operating system:**

<img src="screenshots/02%20Virtual%20machine%20name%20and%20operating%20system.png" alt="Virtual machine name and operating system" width="650">

**Virtual hardware configuration:**

<img src="screenshots/03%20Specify%20virtual%20hardware.png" alt="Virtual machine hardware allocation" width="650">

**Created virtual machine:**

<img src="screenshots/05%20Win11-Client01.png" alt="WIN11-CLIENT01 created in VirtualBox" width="650">

---

### 2. Install Windows 11 Pro

1. Started the virtual machine using the installation ISO.
2. Selected Windows 11 Pro.
3. Reviewed the virtual disk and partition-selection screens.
4. Proceeded with installation on the 80 GB virtual disk.
5. Completed the operating system installation.

The screenshots document the disk-selection process, including the unallocated disk space and partition layout. They do not establish a precise partition-deletion sequence.

**Installation target — unallocated disk space:**

<img src="screenshots/08%20Select%20location.png" alt="80 GB virtual disk available for Windows installation" width="650">

**Windows 11 Pro installation confirmation:**

<img src="screenshots/09%20Ready%20to%20install.png" alt="Windows 11 Pro ready to install" width="650">

**Disk partition layout:**

<img src="screenshots/08%20Select%20location%20Partition.png" alt="Windows installation partition-selection screen" width="650">

---

### 3. Complete Initial Setup

1. Completed the initial Windows region, keyboard, and device configuration.
2. Configured the workstation name `WIN11-CLIENT01`.
3. Selected the work-or-school setup path.
4. Used **Domain join instead** to create a local account.
5. Created the local administrator account `LabAdmin`.
6. Reviewed the initial privacy settings and completed the first login.

**Important:** The **Domain join instead** option created a local account. It did not join the workstation to Active Directory.

**Device naming:**

<img src="screenshots/13%20Name%20your%20device.png" alt="Windows 11 device naming" width="650">

**Initial device setup:**

<img src="screenshots/13%20Set%20up%20this%20device.png" alt="Initial Windows 11 device setup" width="650">

**Local account setup option:**

<img src="screenshots/13%20Sign%20in%20options%2002%20Domain%20join%20instead.png" alt="Domain join instead option for local account creation" width="650">

**Creating the local administrator:**

<img src="screenshots/13%20Sign%20in%20options%2003%20Enter%20your%20name%20LabAdmin.png" alt="Creating the LabAdmin local account" width="650">

**Successful first login:**

<img src="screenshots/14%20Installation%20finished%20-%2003%20desctop%20after%20loged%20in.png" alt="Windows 11 Pro desktop after installation" width="650">

---

### 4. Install and Verify Windows Updates

1. Opened Windows Update and reviewed the update history.
2. Installed available required updates and restarted as needed.
3. Verified that Windows Update subsequently reported the system as **up to date**.

Optional preview updates were not treated as required for completing the VM deployment.

**Update history:**

<img src="screenshots/15%201%20Update%20history.png" alt="Windows 11 update history" width="650">

**Final Windows Update status:**

<img src="screenshots/17%20Windows%20update%20-%20up%20to%20date.png" alt="Windows Update reporting up to date" width="650">

---

### 5. Install VirtualBox Guest Additions

1. Selected **Devices → Insert Guest Additions CD Image** in the VM window.
2. Opened the mounted Guest Additions installation media.
3. Launched the Windows installer.
4. Reviewed installation components and completed setup.
5. Verified **Oracle VirtualBox Guest Additions 7.2.22** in Installed Apps.

**Guest Additions installation media:**

<img src="screenshots/19%20CD%20Drive%20-%20VirtualBox%20Guest%20Additions%20-%20List.png" alt="VirtualBox Guest Additions installation media" width="650">

**Installation components:**

<img src="screenshots/21%20Oracle%20VirtualBox%20Guest%20Additions%20Setup%20choose%20components.png" alt="Guest Additions installation components" width="650">

---

### 6. Verify the Installation

Confirmed the installed Windows edition and system configuration through **Settings → System → About**.

Verified that VirtualBox Guest Additions appeared in the list of installed applications.

**Guest Additions verification:**

<img src="screenshots/23%20Oracle%20VirtualBox%20Guest%20Additions%20installed%20-%20Installed%20Apps.png" alt="Oracle VirtualBox Guest Additions installed" width="650">

**Windows 11 system information:**

<img src="screenshots/16%20System%20About%2003.png" alt="Windows 11 Pro system information" width="650">

---

### 7. Create a Clean Baseline Snapshot

1. Shut down `WIN11-CLIENT01` normally.
2. Opened the VM's Snapshots view in VirtualBox Manager.
3. Created the snapshot **`Clean Windows 11 Pro Baseline`**.
4. Verified the snapshot was available before further lab configuration.

**Snapshot purpose:** Preserve the working Windows 11 installation with updates and Guest Additions before Active Directory integration.

<img src="screenshots/25%20Snapshot%20Current%20state%20-%20right.png" alt="Clean Windows 11 Pro baseline snapshot" width="650">

> A VirtualBox snapshot provides a rollback point but is not a replacement for an independent backup.

---

## Subsequent Network Configuration — Phase 05

After the initial Windows 11 deployment, the client was connected to the isolated VirtualBox network.

| Component | Configuration |
|---|---|
| Adapter 1 | NAT |
| Adapter 2 | Internal Network `AD-LAB` |
| Internal IPv4 | `192.168.50.20/24` |
| Default gateway (internal adapter) | None |
| Preferred DNS (internal adapter) | `192.168.50.10` (`DC01`) |
| DHCP (internal adapter) | Disabled |
| Firewall | Enabled; ICMPv4 Echo Request rule configured |
| Connectivity test | Ping to `192.168.50.10`: 4 replies, 0% packet loss |

The ICMPv4 firewall rule was restricted to the relevant lab network scope `192.168.50.0/24`.

Full network configuration and connectivity troubleshooting are documented separately.

[Virtual Network Configuration](../virtual-network-configuration/README.md)

---

## Verification and Result

| Check | Observed result |
|---|---|
| VM creation | `WIN11-CLIENT01` created successfully |
| Windows installation | Windows 11 Pro installed |
| Local administrator | `LabAdmin` configured |
| Windows Update | Reported up to date |
| Guest Additions | Version 7.2.22 verified |
| Baseline snapshot | Created and verified |
| Internal network | `AD-LAB` configured |
| Connectivity to DC01 | Successful, 0% packet loss |
| Active Directory domain join | Pending |

**Final result:** Windows 11 Pro was installed, configured, updated, and verified. A clean baseline snapshot was created, and the client was subsequently connected to the isolated lab network.

The workstation is prepared for joining the `corp.techlog.test` domain.

**Windows activation is not claimed.** An activation watermark was visible in the guest environment.

---

## Next Steps

- [ ] Join `WIN11-CLIENT01` to `corp.techlog.test`.
- [ ] Verify domain membership and authentication.
- [ ] Test domain-user sign-in.
- [ ] Verify applicable Group Policy settings.
- [ ] Perform practical Windows endpoint and Active Directory support exercises.

---

## Related Documentation

- [VirtualBox Installation and Host Preparation](../virtualbox-installation/README.md)
- [Windows Server 2025 VM Deployment](../windows-server-2025/README.md)
- [Virtual Network Configuration](../virtual-network-configuration/README.md)
- [AD DS and DNS Deployment](../ad-ds-and-dns-deployment/README.md)
