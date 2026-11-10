# Oracle VirtualBox Installation and Host Preparation

**Project:** TechLog Solutions — IT Support Home Lab  
**Host:** HP Pavilion All-in-One 27; Windows 10 Home; Intel Core i5-9400T; 16 GB RAM; HDD storage  
**Virtualization platform:** Oracle VirtualBox 7.2.22  
**Status:** Completed and verified

## Objective

Prepare the existing Windows computer to run isolated Windows 11 Pro and Windows Server 2025 virtual machines for an IT Support practice environment, without replacing the host operating system.

## 1. Enable hardware virtualization

Windows Task Manager (**Performance → CPU**) initially reported **Virtualization: Disabled**. I checked the HP BIOS configuration, changed **Virtualization Technology** from **Disabled** to **Enabled**, saved the setting, and rebooted. Task Manager then reported **Virtualization: Enabled**.

![Task Manager before configuration: hardware virtualization disabled](screenshots/01%20Virtualization%20disabled.png)

![HP BIOS before configuration: Virtualization Technology disabled](screenshots/04%20Enable%20Intel%20Virtualization%20in%20BIOS.jpg)

![HP BIOS after configuration: Virtualization Technology enabled](screenshots/07%20Enable%20Intel%20Virtualization%20in%20BIOS.jpg)

![Task Manager after reboot: hardware virtualization enabled](screenshots/02%20Virtualization%20enabled.png)

**Verification:** The host firmware change was confirmed independently in Windows Task Manager.

## 2. Install Oracle VirtualBox

I ran the Oracle VirtualBox **7.2.22** installer and reviewed the setup warnings. The installer notified me of a potential **temporary network disconnection** during installation of networking components and a **missing Python Core/win32api dependency for optional Python bindings**. These bindings were not required for the graphical VM workflow used in this lab.

I proceeded with the standard installation, confirmed that it completed, and launched **Oracle VirtualBox Manager**.

![VirtualBox installer warning about network interruption and optional Python bindings](screenshots/Installing%20VirtualBox%2003%20warnings.png)

![Oracle VirtualBox 7.2.22 installation completed](screenshots/Installing%20VirtualBox%2006%20Oracle%20VirtualBox%20intalled.png)

![Oracle VirtualBox Manager opened successfully after installation](screenshots/Installing%20VirtualBox%2007%20VirtualBox%20Manager.png)

**Verification:** The installation wizard reported completion and VirtualBox Manager opened successfully.

## 3. Install and verify the Extension Pack

I added the **Oracle VirtualBox Extension Pack** through VirtualBox's extensions management interface. The installed extension was visible in the manager with the matching **7.2.22** version.

![Matching Oracle VirtualBox Extension Pack listed in extensions management](screenshots/Installing%20VirtualBox%2008%20install%20extension%20pack%20end.png)

**Verification:** The Extension Pack appeared in the installed extensions list.

## Result

| Check | Observed result |
|---|---|
| Host virtualization | Enabled in BIOS and verified in Task Manager |
| VirtualBox installation | Version 7.2.22 installed |
| VirtualBox Manager | Opened successfully |
| Extension Pack | Version 7.2.22 listed as installed |
| Windows client/server VMs | Documented separately in the subsequent deployment sections |

This establishes the virtualization platform needed for the two-machine internal `AD-LAB` environment. Installation and configuration of individual guest operating systems are covered in separate READMEs.

## Related documentation

- [Windows 11 Pro installation and baseline snapshot](../windows-11-pro-installation/README.md)
- [Windows Server 2025 installation and baseline snapshot](../windows-server-2025/README.md)
- [Main VM deployment overview](../README.md)

## Evidence and publication notes

Eight original Phase 01 images are linked above, with their **existing filenames retained**. The selected images include two HP BIOS photographs and setup-window screenshots. Review them for personal or device-specific information before publishing to GitHub. The originals are preserved separately in the Library; this package includes only the selected evidence.

