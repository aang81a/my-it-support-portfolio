# Backup and Data Check

---

## Purpose

This document describes the backup and data-check process used during the legacy storage troubleshooting case.

The goal was to protect existing files before performing any repair, formatting, reinstallation, or further troubleshooting that could modify or destroy data.

---

## Backup Principle

The main rule was:
Do not format, reinstall, repair, or reset before checking and backing up data.

This was important because old hard drives may still contain:

* personal photos
* documents
* old project files
* software installers
* user folders
* recoverable data

---

## Samsung SP1203N IDE/PATA HDD

<img src="images/02-samsung-ide-hdd.jpg" alt="Samsung SP1203N IDE/PATA HDD kept unchanged for later data check" width="500">

The Samsung SP1203N IDE/PATA hard drive was detected in BIOS, but it did not boot successfully.

Because the drive may still contain old files, it was kept unchanged for a later data check, and no destructive action was performed.

A future IDE/PATA-to-USB adapter is required to inspect the drive safely from another working computer.

Actions avoided:

* no formatting
* no Windows installation
* no partition changes
* no bootloader repair
* no recovery reset

---

## Western Digital SATA HDD

A Western Digital SATA hard drive was tested in Computer 2 using a SATA connection.

The WD SATA HDD did not boot as a standalone Windows system drive. However, Windows was accessible through Computer 2, and existing files/folders on the WD SATA HDD were visible.

This made it possible to start a data review and backup process.

<img src="images/06-wd-sata-hdd-test.jpg" alt="Western Digital SATA HDD connected in Computer 2 for data check" width="500">

---

## Backup Target

An external Seagate USB hard drive was selected as the backup destination.

<img src="images/07-backup-to-seagate.jpg" alt="Backup from WD SATA HDD to external Seagate USB drive" width="500">

Reason:

* external storage was available
* enough space was expected
* it allowed files to be copied before further system changes
* it reduced the risk of data loss

---

## Backup Process

The backup process was started from the Western Digital SATA HDD to the external Seagate USB drive.

The following data categories were prioritized:

* user folders
* documents
* photos
* downloads
* desktop files
* old project folders
* software-related folders

The backup was allowed to continue even though the transfer was slow.

---

## Slow Backup Observation

The backup process was slow.

Possible reasons:

* older hard drive
* many small files
* USB transfer limitations
* old Windows installation
* limited system performance
* possible disk wear

The correct action was to avoid interrupting the copy process unless an error appeared.

---

## Data Safety Decisions

During the process, the following safety decisions were applied:

* do not format unknown drives
* do not initialize unknown drives
* do not run repair/reset tools before backup
* do not reinstall Windows before checking files
* copy important data first
* verify copied files after backup

---

## If Windows Shows a Disk Warning

If Windows shows any warning about formatting, initializing, repairing, or checking the disk, no action should be confirmed immediately.

Correct action:

- cancel the warning
- do not format the disk
- do not initialize the disk
- document the message if needed
- check the data status first
- back up accessible files before making changes

---

## Verification Plan

After the backup finishes, the copied files should be checked.

Verification steps:

* open the backup folder on the Seagate drive
* confirm that expected folders are present
* open a few sample files
* check photos/documents if possible
* compare folder sizes if needed
* keep the original drive unchanged until the backup is confirmed

---

## Result

Backup was started from the Western Digital SATA HDD to the external Seagate USB drive.

The Samsung SP1203N IDE/PATA drive was left unchanged because its data could not yet be checked without an IDE/PATA-to-USB adapter.

---

## Lessons Learned

* A drive that does not boot may still contain recoverable data.
* BIOS detection does not guarantee a working operating system.
* Data protection must come before repair attempts.
* External storage is useful for safe backup workflows.
* Slow copy speed can be normal with older drives.
* Unknown drives should never be formatted before inspection.

---

## Skills Demonstrated

* Data-loss prevention
* Backup planning
* External storage usage
* Safe handling of unknown hard drives
* Prioritizing user data
* Recognizing destructive actions
* Documenting a recovery workflow
