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
| Computer 1 – Legacy ASUS desktop | Legacy storage and BIOS troubleshooting system | ASUS P5LD2 / American Megatrends BIOS, Intel Pentium D 2.80 GHz, 2944 MB RAM shown in BIOS; used for Samsung SP1203N IDE/PATA HDD detection, optical drive testing, BIOS boot order checks |
| Computer 2 – HP 280 G2 MT | Recovery and backup workstation | Windows 10 Pro, Intel Core i3-6100 3.70 GHz, 4 GB DDR4 RAM, 500 GB Seagate SATA HDD; used to access Windows, test SATA drives, check files, and perform backup/storage checks |
| Computer 3 – HP Pavilion All-in-One 27-xa0xxx | Hardware upgrade system / Future VM lab workstation | Windows 10 Home 22H2, Intel Core i5-9400T 1.80 GHz, RAM upgraded from 8 GB to 16 GB |
| Computer 4 – Legacy WD SATA HDD source (2006) | Legacy hardware system test candidate | Initially checked as a possible standalone system; Windows did not boot successfully; files were accessible and backed up through Computer 2 |
| Laptop – HP Pavilion 15-eg0xxx | Main support device | Windows 11 Pro, Intel Core i7-1165G7, 16 GB RAM, 1 TB local storage; used as the main device for lab documentation and support work |

---

## Storage Devices

| Device | Type | Used for |
|---|---|---|
| Samsung SP1203N | Internal IDE/PATA HDD, 120 GB | Tested in Computer 1; detected in BIOS; no bootable OS found |
| Seagate SATA HDD in Computer 2 | Internal SATA HDD, 500 GB | Internal system drive used in the HP 280 G2 MT (Computer 2); Windows started successfully; used as the internal drive of the recovery and backup workstation |
| Western Digital WD2500JS | Internal SATA HDD, 250 GB / legacy storage source | Connected in Computer 2 as a secondary SATA drive using a SATA data cable; files were accessible and backed up to the external Seagate Basic drive |
| Seagate Basic | External USB HDD, 2 TB, USB 3.0 / USB 2.0 compatible | Backup destination |
| WD My Passport Wireless Pro | External Wi-Fi mobile storage, 2 TB, SD 3.0, Wi-Fi AC, USB 2.0 | Existing data found; checked as legacy external storage; not used as backup destination yet |
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
