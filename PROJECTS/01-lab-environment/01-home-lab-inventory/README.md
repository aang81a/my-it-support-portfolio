# Home Lab Inventory
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Home_Lab_Inventory-orange)
![Skill](https://img.shields.io/badge/Skill-Hardware_Documentation-blue)
![Skill](https://img.shields.io/badge/Skill-Asset_Tracking-blue)

---

## Purpose

This document lists the hardware, storage devices, cables, and test systems used in my home lab for practical IT support training.

The lab is used for hardware troubleshooting, storage testing, BIOS/boot diagnostics, data backup practice, and documentation of real support workflows.

---

## Lab Systems

| System | Role in the lab | Relevant notes |
|---|---|---|
| Computer 1 – Legacy ASUS desktop | Legacy storage and BIOS troubleshooting system | ASUS-branded legacy desktop with Intel Pentium D CPU, ASUS DVD/CD writer, LG DVD/CD writer, and VIPower/SuperRack drive bay; used for legacy disc-to-disc copying, Samsung SP1203N IDE/PATA HDD (2004) testing, DVD/CD drive testing, and BIOS boot order checks |
| Computer 1 – Legacy ASUS desktop | Legacy storage and BIOS troubleshooting system | ASUS P5LD2 / American Megatrends BIOS, Intel Pentium D 2.80 GHz, 2944 MB RAM shown in BIOS; used for Samsung SP1203N IDE/PATA HDD detection, optical drive detection, and BIOS boot order checks |
| Computer 1 – Legacy ASUS desktop | Legacy storage and BIOS troubleshooting system | ASUS P5LD2 / American Megatrends BIOS, Intel Pentium D 2.80 GHz, 2944 MB RAM shown in BIOS; used for Samsung SP1203N IDE/PATA HDD detection, optical drive testing, BIOS boot order checks, and CMOS/date-time warning observation |
| Computer 2 – HP black desktop | Recovery, backup, and VM lab workstation | Desktop PC with internal Seagate SATA HDD; used to test SATA drives, access Windows, check files, prepare recovery media, perform backup and storage checks, and run VM lab tasks |
| Computer 3 – HP all-in-one | Hardware upgrade system | Used for RAM upgrade documentation |
| Computer 4 – Legacy WD SATA HDD source (2006) | Legacy storage source for backup / additional hardware test system | WD SATA HDD tested in Computer 2 (the HP black desktop) using SATA connection; did not boot as a standalone Windows system drive; files are being backed up to the external Seagate USB drive; available for later hardware and storage testing |

---

## Storage Devices

| Device | Type | Used for |
|---|---|---|
| Samsung SP1203N | IDE/PATA HDD, 120 GB | Tested in Computer 1; detected in BIOS; no bootable OS found |
| Internal Seagate SATA HDD in Computer 2 | SATA HDD | Tested in Computer 2; Windows started successfully; used as the internal drive of the recovery and backup workstation |
| Western Digital HDD | SATA HDD | Tested in Computer 2 using a SATA data cable; did not boot as a standalone system drive; contains files that are being backed up to the external Seagate USB drive |
| Seagate Basic | External USB HDD, 2 TB, USB 3.0 / USB 2.0 compatible | Backup destination |
| WD My Passport Wireless Pro | Wi-Fi mobile storage, 2 TB, SD 3.0, Wi-Fi AC, USB 2.0 | Existing data found; checked as legacy external storage; not used as backup destination yet |
| Silicon Power Armor | External USB HDD, 1 TB | Existing data found; checked as legacy external storage; not used as backup destination |

---

## Cables and Interfaces

| Component | Purpose |
|---|---|
| IDE/PATA ribbon cable | Used for legacy HDD/DVD connections |
| SATA data cable | Used for SATA HDD connections |
| Molex power connector | Used for legacy IDE/PATA devices |
| SATA power connector | Used for SATA HDDs |
| USB cable / external drive connection | Used for backup storage |

---

## Notes

This inventory is not a full hardware catalogue. It only documents components that were relevant for troubleshooting, backup, recovery, and IT support home lab practice.
