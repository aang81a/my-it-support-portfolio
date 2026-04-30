# Home Lab Inventory

## Purpose

This document lists the hardware, storage devices, cables, and test systems used in my home lab for practical IT support training.

The lab is used for hardware troubleshooting, storage testing, BIOS/boot diagnostics, data backup practice, and documentation of real support workflows.

---

## Lab Systems

| System | Role in the lab | Relevant notes |
|---|---|---|
| Computer 1 – Legacy ASUS desktop | Legacy storage and BIOS troubleshooting system | Used for IDE/PATA HDD testing, DVD drive testing, BIOS boot order checks |
| Computer 2 – HP black desktop | Recovery and backup workstation | Desktop PC with internal Seagate SATA HDD; used to test SATA drives, access Windows, check files, prepare recovery media, and perform backup and storage checks; possible future VM lab or home lab workstation |
| Computer 3 – HP all-in-one | Hardware upgrade system | Used for RAM upgrade documentation |
| Computer 4 – WD SATA HDD source | Storage source for backup / additional hardware test system | WD SATA HDD tested in Computer 2 (the HP black desktop) using SATA connection; did not boot as a standalone Windows system drive; files are being backed up to the external Seagate USB drive; available for later hardware and storage testing |

---

## Storage Devices

| Device | Type | Used for |
|---|---|---|
| Samsung SP1203N | IDE/PATA HDD | Tested in Computer 1; detected in BIOS; no bootable OS found |
| Internal Seagate SATA HDD in Computer 2 | SATA HDD | Tested in Computer 2; Windows started successfully; used as the internal drive of the recovery and backup workstation |
| Western Digital HDD | SATA HDD | Tested in Computer 2 using a SATA data cable; did not boot as a standalone system drive; contains files that are being backed up to the external Seagate USB drive |
| Seagate external USB drive | External USB storage | Backup destination |
| WD My Passport Wireless Pro | Wireless external storage | Planned for later storage/network access testing |

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

