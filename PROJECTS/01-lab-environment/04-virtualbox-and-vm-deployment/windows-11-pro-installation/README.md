# Windows 11 Pro VM Deployment
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Windows%20Clients-blue)
![VM](https://img.shields.io/badge/VM-Windows%2011%20Pro-blue)

---

## Objective

Deploy and configure a Windows 11 Pro virtual machine as a client workstation for the Active Directory home lab.

---

## Configuration

| Component     | Specification            |
| ------------- | ------------------------ |
| Host OS       | Windows 10 Home          |
| Hypervisor    | Oracle VirtualBox 7.2.22 |
| VM Name       | `WIN11-CLIENT01`         |
| Guest OS      | Windows 11 Pro           |
| CPU / RAM     | 2 vCPUs / 4 GB           |
| Virtual Disk  | 80 GB                    |
| Firmware      | EFI                      |
| Local Account | `LabAdmin`               |

---

## Deployment

### 1. Create the virtual machine

Selected the Windows 11 ISO and configured VM hardware for a manual installation.

<img src="screenshots/01%20Choose%20%20VM%20Client%20ISO%20Windows%2011%20Pro.png" alt="Windows 11 ISO" width="650">
<img src="screenshots/02%20Virtual%20machine%20name%20and%20operating%20system.png" alt="VM name and OS" width="650">
<img src="screenshots/03%20Specify%20virtual%20hardware.png" alt="VM hardware" width="650">
<img src="screenshots/05%20Win11-Client01.png" alt="VM created" width="650">

---

### 2. Install Windows 11 Pro

Selected the 80 GB virtual disk. Windows Setup created the required system partitions automatically; installation continued on the primary partition.

<img src="screenshots/08%20Select%20location.png" alt="Unallocated virtual disk" width="650">
<img src="screenshots/09%20Ready%20to%20install.png" alt="Windows 11 Pro installation confirmation" width="650">
<img src="screenshots/08%20Select%20location%20Partition.png" alt="Automatically created disk partitions" width="650">

---

### 3. Complete initial setup

Configured device settings and created the local `LabAdmin` account. Domain integration is a later lab phase.

<img src="screenshots/13%20Name%20your%20device.png" alt="Device name" width="650">
<img src="screenshots/13%20Set%20up%20this%20device.png" alt="Initial setup" width="650">
<img src="screenshots/13%20Sign%20in%20options%2002%20Domain%20join%20instead.png" alt="Local account setup option" width="650">
<img src="screenshots/13%20Sign%20in%20options%2003%20Enter%20your%20name%20LabAdmin.png" alt="Local LabAdmin account" width="650">
<img src="screenshots/14%20Installation%20finished%20-%2003%20desctop%20after%20loged%20in.png" alt="Windows 11 desktop" width="650">

---

### 4. Install Windows updates

Applied available updates and confirmed the final Windows Update status.

<img src="screenshots/15%201%20Update%20history.png" alt="Update history" width="650">
<img src="screenshots/17%20Windows%20update%20-%20up%20to%20date.png" alt="Windows Update status" width="650">

---

### 5. Install VirtualBox Guest Additions

Installed Guest Additions 7.2.22 and verified the installation in **Installed apps**.

<img src="screenshots/19%20CD%20Drive%20-%20VirtualBox%20Guest%20Additions%20-%20List.png" alt="Guest Additions installation media" width="650">
<img src="screenshots/21%20Oracle%20VirtualBox%20Guest%20Additions%20Setup%20choose%20components.png" alt="Guest Additions setup" width="650">

---

### 6. Verify the installation

Confirmed Windows 11 Pro and the VM system configuration in **Settings → System → About**.

<img src="screenshots/23%20Oracle%20VirtualBox%20Guest%20Additions%20installed%20-%20Installed%20Apps.png" alt="Guest Additions installed" width="650">
<img src="screenshots/16%20System%20About%2003.png" alt="System information" width="650">

---

### 7. Create a baseline snapshot

Created the **`Clean Windows 11 Pro Baseline`** snapshot before further lab configuration.

<img src="screenshots/25%20Snapshot%20Current%20state%20-%20right.png" alt="Baseline snapshot" width="650">

---

## Result

Windows 11 Pro installed, updated, verified, and prepared for subsequent Active Directory lab configuration.
