# Windows Server 2025 VM Deployment

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![VM](https://img.shields.io/badge/VM-Windows%20Server%202025-blue)
![Lab](https://img.shields.io/badge/Lab-Windows%20Client--Server-lightgrey)

---

## Objective

Deploy and configure Windows Server 2025 as `DC01`, the server virtual machine for the TechLog Solutions Active Directory home lab.

Prepare the server with its required hardware resources, local administrator account, system configuration, VirtualBox Guest Additions, and a clean baseline snapshot before installing Active Directory Domain Services.

---

## VM Configuration

| Component | Specification |
|---|---|
| Host OS | Windows 10 Home |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| VM name / hostname | `DC01` |
| Guest OS | Windows Server 2025 Standard Evaluation (Desktop Experience) |
| VirtualBox OS template | Windows Server 2022 (64-bit) — template label only |
| CPU / RAM | 2 vCPUs / 4 GB |
| Virtual disk | 80 GB |
| Firmware | EFI enabled |
| Initial account | Local `Administrator` |
| Guest Additions | Version 7.2.22 |
| Time zone | Central European Time, with daylight saving time |
| Baseline snapshot | `Clean Windows Server 2025 Baseline` |

The VirtualBox template label does not indicate the installed operating system. The guest runs Windows Server 2025.

---

## Deployment

### 1. Create and Configure the Virtual Machine

1. Obtained the Windows Server 2025 Evaluation ISO from Microsoft.
2. Created a virtual machine named `DC01` in Oracle VirtualBox.
3. Attached the installation ISO and selected the manual installation workflow.
4. Initially configured the VM with **2 GB RAM, 1 vCPU, 50 GB disk, and EFI disabled**.
5. Revised the configuration to **4 GB RAM, 2 vCPUs, an 80 GB virtual disk, and EFI enabled**.
6. Verified the final configuration before starting Windows installation.

**VM name and installation ISO:**

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2002%20Name.png" alt="DC01 VM name and Windows Server installation ISO" width="650">

**Initial virtual hardware configuration:**

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2003%20Specify%20virtual%20hardware.png" alt="Initial Windows Server VM hardware settings" width="650">

**Revised configuration:**

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2004%20Settings.png" alt="Revised VM settings with increased RAM, CPUs, disk and EFI" width="650">

**Final VM configuration summary:**

<img src="screenshots/26%20Create%20New%20Virtual%20Machine%2005%20Summary.png" alt="Windows Server 2025 virtual machine configuration summary" width="650">

---

### 2. Install Windows Server 2025

1. Started the VM using the Windows Server installation ISO.
2. Selected **Windows Server 2025 Standard Evaluation (Desktop Experience)**.
3. Selected the 80 GB virtual disk as the installation destination.
4. Reviewed the installation summary and completed Windows Setup.
5. Configured the local `Administrator` account with a password kept outside the public documentation.
6. Signed in and opened Server Manager.

The **Desktop Experience** edition provides the graphical management interface used in this lab.

**Operating system edition selection:**

<img src="screenshots/31%20Select%20image%20OS.png" alt="Windows Server 2025 Standard Evaluation Desktop Experience selected" width="650">

**Installation destination:**

<img src="screenshots/32%20Select%20location.png" alt="Virtual disk selected for Windows Server installation" width="650">

**Installation confirmation:**

<img src="screenshots/33%20Before%20installation%20-%20Ready%20to%20install.png" alt="Windows Server installation confirmation" width="650">

**Initial Administrator configuration:**

<img src="screenshots/35%20Customize%20settings.png" alt="Windows Server initial Administrator account configuration" width="650">

---

### 3. Complete Initial Server Configuration

1. Opened **Server Manager → Local Server**.
2. Renamed the computer to `DC01`.
3. Restarted Windows to apply the new hostname.
4. Configured the time zone to **(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna**, with automatic daylight saving time.
5. Reopened Server Manager and verified the local-server properties.

**Computer name:**

<img src="screenshots/41%20Computer%20Name%20ok.png" alt="DC01 computer name configuration" width="650">

**Time zone:**

<img src="screenshots/45%20Setting%20time%20zone.png" alt="Windows Server Central European time zone configuration" width="650">

**Server Manager verification:**

<img src="screenshots/46%20Server%20Manager%20Local%20Server%2003.png" alt="Server Manager local-server properties" width="650">

**Note:** At this stage, `DC01` was the computer hostname. The server had not yet been promoted to an Active Directory Domain Controller.

---

### 4. Install VirtualBox Guest Additions

1. Selected **Devices → Insert Guest Additions CD Image** in VirtualBox.
2. Started the Guest Additions installer inside Windows Server.
3. Reviewed the installation components and completed setup.
4. Restarted the VM.
5. Verified **Oracle VirtualBox Guest Additions 7.2.22** in Installed Apps.

**Guest Additions installation components:**

<img src="screenshots/48%20Installation%20Oracle%20VirtualBox%20Guest%20Addition%2003%20Components.png" alt="VirtualBox Guest Additions installation components" width="650">

**Installation verification:**

<img src="screenshots/53%20DC01%20-%20VirtualBox%20Guest%20Additions%20installed.png" alt="VirtualBox Guest Additions verified in Installed Apps" width="650">

---

### 5. Create a Clean Baseline Snapshot

1. Shut down `DC01` normally.
2. Waited until VirtualBox reported the VM as **Powered Off**.
3. Opened the VM's Snapshots view.
4. Created **`Clean Windows Server 2025 Baseline`**.
5. Verified that the snapshot appeared in the snapshot tree.

**Snapshot purpose:** Preserve the initial Windows Server installation before network configuration and Active Directory role installation.

<img src="screenshots/56%20Create%20DC01%20snapshot.png" alt="Clean Windows Server 2025 Baseline snapshot" width="650">

**Important:** The baseline snapshot was taken before subsequent security updates and AD DS installation. It is not proof of a fully patched server.

A VirtualBox snapshot is a rollback point, not an independent backup.

---

## Subsequent Virtual Network Configuration — Phase 05

After the initial deployment, `DC01` was connected to the isolated VirtualBox lab network.

| Component | Configuration |
|---|---|
| Adapter 1 | NAT |
| Adapter 2 | Internal Network `AD-LAB` |
| Internal Windows interface | Ethernet 2 |
| Static IPv4 | `192.168.50.10/24` |
| Internal default gateway | None |
| Preferred DNS (internal adapter) | `192.168.50.10` |
| DHCP (internal adapter) | Disabled |
| Windows Defender Firewall | Enabled |
| ICMPv4 inbound rule | Enabled with remote scope `192.168.50.0/24` |
| Server-to-client connectivity | `ping 192.168.50.20`: 4 replies, 0% packet loss |

At this stage, the server was prepared for DNS installation; the DNS Server role was deployed afterward.

The complete adapter configuration, firewall changes, and connectivity tests are documented separately.

[Virtual Network Configuration](../virtual-network-configuration/README.md)

---

## Subsequent AD DS and DNS Deployment — Phase 06

Following the Windows Server deployment and network configuration:

1. Installed the **Active Directory Domain Services (AD DS)** role.
2. Promoted `DC01` to the Domain Controller of a new forest.
3. Created the Active Directory domain **`corp.techlog.test`**.
4. Configured the NetBIOS domain name **`TECHLOG`**.
5. Installed and configured the DNS Server role.
6. Verified the Active Directory-integrated DNS zones.
7. Troubleshot incorrect registration of the NAT address `10.0.2.15`.
8. Verified that `dc01.corp.techlog.test` resolved to the intended internal address `192.168.50.10` after the corrective changes and server restart.

The installation procedure, DNS troubleshooting, registry adjustment, and verification screenshots are documented in the dedicated Phase 06 README.

[AD DS and DNS Deployment](../ad-ds-and-dns-deployment/README.md)

---

## Verification and Result

| Check | Observed result |
|---|---|
| VM creation | `DC01` created successfully |
| Windows installation | Windows Server 2025 Standard Evaluation (Desktop Experience) |
| Administrator account | Local account configured |
| Computer hostname | `DC01` verified |
| Time zone | Central European time configured |
| Guest Additions | Version 7.2.22 verified |
| Clean baseline snapshot | Created before AD DS installation |
| Internal network | `AD-LAB` configured |
| Client connectivity | 4 replies, 0% packet loss |
| AD DS and DNS | Subsequently deployed and verified in Phase 06 |

**Final result:** Windows Server 2025 was successfully installed, configured, and preserved in a clean baseline snapshot. Its network connectivity was subsequently verified, and the server was promoted to a Domain Controller for `corp.techlog.test`.

This README documents the **Windows Server VM deployment**. AD DS installation and DNS troubleshooting are maintained in the separate Phase 06 documentation.

---

## Related Documentation

- [VirtualBox Installation and Host Preparation](../virtualbox-installation/README.md)
- [Windows 11 Pro VM Deployment](../windows-11-pro-installation/README.md)
- [Virtual Network Configuration](../virtual-network-configuration/README.md)
- [AD DS and DNS Deployment](../ad-ds-and-dns-deployment/README.md)
