# Oracle VirtualBox Installation

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Tool](https://img.shields.io/badge/Tool-Oracle%20VirtualBox%207.2.22-blue)

## Objective

Install and prepare Oracle VirtualBox on the Windows 10 host for the IT Support home lab.

## Configuration

| Component | Specification |
|---|---|
| Host OS | Windows 10 Home |
| Host hardware | HP Pavilion All-in-One, Intel Core i5-9400T, 16 GB RAM |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Extension Pack | Oracle VirtualBox Extension Pack 7.2.22 |

## Main Steps

### 1. Enable Hardware Virtualization

Enabled Intel Virtualization Technology in the host BIOS and confirmed **Virtualization: Enabled** in Windows Task Manager.

![Virtualization disabled in Task Manager](screenshots/01%20Virtualization%20disabled.png)
![Virtualization disabled in BIOS](screenshots/04%20Enable%20Intel%20Virtualization%20in%20BIOS.jpg)
![Virtualization enabled in BIOS](screenshots/07%20Enable%20Intel%20Virtualization%20in%20BIOS.jpg)
![Virtualization enabled in Task Manager](screenshots/02%20Virtualization%20enabled.png)

### 2. Install Oracle VirtualBox

Installed VirtualBox 7.2.22, reviewed installer warnings, and launched VirtualBox Manager.

![VirtualBox installer warnings](screenshots/Installing%20VirtualBox%2003%20warnings.png)
![VirtualBox installation completed](screenshots/Installing%20VirtualBox%2006%20Oracle%20VirtualBox%20intalled.png)
![VirtualBox Manager](screenshots/Installing%20VirtualBox%2007%20VirtualBox%20Manager.png)

### 3. Install the Extension Pack

Installed the matching Extension Pack (7.2.22) and verified that it appeared in the installed extensions list.

![Installed VirtualBox Extension Pack](screenshots/Installing%20VirtualBox%2008%20install%20extension%20pack%20end.png)

## Result

**Hardware virtualization enabled; VirtualBox and the matching Extension Pack installed and verified.** The host is ready for VM deployment.
