# Oracle VirtualBox Installation
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Tool](https://img.shields.io/badge/Tool-Oracle%20VirtualBox%207.2.22-blue)

---

## Objective

Install and prepare Oracle VirtualBox on the Windows 10 host for an IT-Support practice environment.

---

## Configuration

| Component | Specification |
|---|---|
| Host OS | Windows 10 Home |
| Host hardware | HP Pavilion All-in-One, Intel Core i5-9400T, 16 GB RAM |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Extension Pack | Oracle VirtualBox Extension Pack 7.2.22 |

---

## Main Steps

### 1. Enable Hardware Virtualization

Windows Task Manager (**Performance → CPU**) initially reported **Virtualization: Disabled**.  
I checked the HP BIOS configuration, changed **Virtualization Technology** from **Disabled** to **Enabled**, saved the setting, and rebooted.  
Task Manager then reported **Virtualization: Enabled**.

![Task Manager before configuration: hardware virtualization disabled](screenshots/01%20Virtualization%20disabled.png)

![HP BIOS before configuration: Virtualization Technology disabled](screenshots/04%20Enable%20Intel%20Virtualization%20in%20BIOS.png)

![HP BIOS after configuration: Virtualization Technology enabled](screenshots/07%20Enable%20Intel%20Virtualization%20in%20BIOS.png)

![Task Manager after reboot: hardware virtualization enabled](screenshots/02%20Virtualization%20enabled.png)

**Verification:** The host firmware change was confirmed independently in Windows Task Manager.

---

### 2. Install Oracle VirtualBox

Selected the VirtualBox the installation components and verified sufficient disk space before proceeding. 

![VirtualBox Custom Setup and Disk Space Check](screenshots/Installing%20VirtualBox%2002%20Disk%20Space%20checking.png)

---

Installed VirtualBox 7.2.22, reviewed installer warnings, and launched VirtualBox Manager. 

![VirtualBox installer warnings](screenshots/Installing%20VirtualBox%2003%20warnings.png)  
![VirtualBox installation completed](screenshots/Installing%20VirtualBox%2006%20Oracle%20VirtualBox%20intalled.png)  
![VirtualBox Manager](screenshots/Installing%20VirtualBox%2007%20VirtualBox%20Manager.png)  

---

### 3. Install the Extension Pack

I added the **Oracle VirtualBox Extension Pack** through VirtualBox's extensions management interface. The installed extension was visible in the manager with the matching **7.2.22** version.

![Installed VirtualBox Extension Pack](screenshots/Installing%20VirtualBox%2008%20install%20extension%20pack%20end.png)

---

## Result

**Hardware virtualization enabled; VirtualBox and the matching Extension Pack installed and verified.** The host is ready for VM deployment.

| Check | Observed result |
|---|---|
| Host virtualization | Enabled in BIOS and verified in Task Manager |
| VirtualBox installation | Version 7.2.22 installed |
| VirtualBox Manager | Opened successfully |
| Extension Pack | Version 7.2.22 listed as installed |
| Windows client/server VMs | Documented separately in the subsequent deployment sections |

