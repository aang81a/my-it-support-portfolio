# 01 — Analysis

## Case Summary

This case started with a legacy ASUS desktop computer that showed BIOS/CMOS messages during startup and did not boot into an operating system.

The main goal was to understand whether the issue was caused by:

- a missing or undetected hard drive
- incorrect IDE/PATA cable or jumper configuration
- wrong BIOS boot priority
- a faulty optical drive configuration
- a damaged or missing bootloader
- an operating system problem
- old data that should be checked before reinstalling or formatting

## Initial Symptoms

During startup, the system displayed the following messages:

- `CMOS Settings Wrong`
- `CMOS Date/Time Not Set`
- `Press F1 to Run SETUP`
- `Press F2 to load default values and continue`
- `Reboot and Select proper Boot device or Insert Boot Media in selected Boot device and press a key`

These messages indicated that the system could enter BIOS, but it could not successfully boot from the selected device.

## Hardware Observed

### Computer 1 — Legacy ASUS Desktop

Computer 1 was used as the main legacy troubleshooting system.

<img src="images/01-computer1-legacy-inside.jpg" alt="Computer 1 legacy ASUS desktop inside" width="500">

Observed hardware and components:

- ASUS P5LD2 motherboard
- American Megatrends BIOS
- Intel Pentium D CPU
- IDE/PATA connectors on the motherboard
- SATA connectors on the motherboard
- optical drives
- internal hard drive bay / removable HDD enclosure
- CMOS date/time issue

### Samsung SP1203N IDE/PATA HDD

The Samsung SP1203N hard drive was identified as a legacy IDE/PATA hard drive.

<img src="images/02-samsung-ide-hdd-direct-connection.jpg" alt="Samsung SP1203N IDE/PATA HDD direct connection test" width="500">

Important observations:

- Model: Samsung SP1203N
- Capacity: 120 GB
- Interface: IDE/PATA
- The drive was detected in BIOS as `SAMSUNG SP1203N`
- BIOS showed S.M.A.R.T. capable and status OK
- The system still did not boot successfully from this drive

This means the hard drive was physically detected, but the boot process failed later.

## BIOS Detection Results

The BIOS detected the Samsung hard drive as:

```text
Primary IDE Master: SAMSUNG SP1203N
Ultra DMA Mode-5
S.M.A.R.T. Capable and Status OK
```
<img src="images/03-bios-samsung-hdd-detected.jpg" alt="Samsung SP1203N detected in BIOS" width="500">

This was an important result because it showed that:

- the IDE/PATA cable connection was working
- the Molex power connection was working
- the hard drive was visible to the system
- the problem was probably not simple power failure
- the issue could be related to boot order, missing operating system, corrupted bootloader, or incompatible installation

## Optical Drive Detection

The ASUS optical drive was also detected during testing.

Detected device:

```text
ASUS DRW-1608P3S
```

This confirmed that at least one optical drive could be used as a possible boot device for a Windows installation or recovery disc.

The LG optical drive was tested separately, but the troubleshooting focus remained on keeping the setup simple and avoiding too many variables at once.

## Boot Priority Findings

The BIOS boot priority was adjusted so that the Samsung hard drive could be selected as the first boot device.

Example boot order used during testing:

```text
1st Boot Device: PM-SAMSUNG SP1203N
2nd Boot Device: ATAPI CD-ROM
3rd Boot Device: ASUS DRW-1608P3S
4th Boot Device: Floppy / Disabled
```

Even after the Samsung hard drive was selected as the first boot device, the system displayed:

```text
Reboot and Select proper Boot device
or Insert Boot Media in selected Boot device and press a key
```
This suggested that the BIOS could detect the drive, but did not find a valid bootable system on it.


## Important Safety Decision

The hard drive was not formatted.
This was important because the drive could contain old files, photos, documents, or other personal data.

Before reinstalling Windows or changing partitions, the safer decision was:

1. stop destructive actions
2. check whether the drive contains important data
3. back up files first
4. only then decide whether the drive can be reused, formatted, or repaired


## Additional SATA HDD Test

A Western Digital SATA hard drive was tested in Computer 2 using a SATA connection.

Result:

- The WD SATA HDD did not boot as a standalone Windows system drive.
- Windows was accessible through Computer 2.
- Existing files and folders on the WD SATA HDD were visible.
- Backup to an external Seagate USB drive was started.

This showed that the WD SATA HDD could be used for data checking and backup practice, even though it was not a standalone bootable system drive.

## Initial Conclusion
The first analysis showed two different situations:

### Samsung SP1203N IDE/PATA HDD

- detected by BIOS
- S.M.A.R.T. status OK
- not booting successfully
- should not be formatted before data recovery check

### Western Digital SATA HDD

- tested in Computer 2 using SATA connection
- did not boot as a standalone Windows system drive
- contained visible folders and files 
- suitable for backup and data review
- useful as part of the storage recovery workflow

## IT Support Relevance
This case is relevant for first-level IT support because it shows a realistic troubleshooting process:

- check physical connections
- reduce the setup to fewer variables
- verify BIOS detection
- adjust boot order
- distinguish hardware detection from operating system boot failure
- protect user data before reinstalling or formatting
- document observations clearly
