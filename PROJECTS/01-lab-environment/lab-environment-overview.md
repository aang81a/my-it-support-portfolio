# Lab Environment Overview

---

This diagram shows the main devices and storage components used in the legacy storage troubleshooting and backup case. It gives a quick overview of which computers, hard drives, optical drives, and backup storage were involved.

It shows Computer 1 for IDE/PATA storage testing, Computer 2 for recovery work, Computer 3 for RAM-upgrade, and the external Seagate drive as the final backup destination.

---

```mermaid
flowchart TB

    TITLE["LEGACY STORAGE<br/>TROUBLESHOOTING<br/>AND BACKUP"]

    C1["Computer 1<br/>Legacy ASUS desktop<br/>IDE/PATA storage testing"]
    C3["Computer 3<br/>HP All-in-One<br/>RAM upgrade<br/>+ backup"]
    C2["Computer 2<br/>HP black desktop<br/>Recovery, backup and home lab workstation"]

    Samsung["Samsung SP1203N<br/>IDE/PATA HDD"]
    Optical["ASUS DRW-1608P3S<br/>+ LG DVD drive<br/>Optical drives tested in Computer 1"]

    WD["WD SATA HDD source<br/>Tested in Computer 2"]
    InternalSeagate["Internal Seagate SATA HDD<br/>Windows system drive in Computer 2"]

    ExternalSeagate["Seagate external drive<br/>Final backup destination"]

    TITLE --> C1
    TITLE --> C3
    TITLE --> C2

    Samsung --> C1
    Optical --> C1

    WD --> C2
    InternalSeagate --> C2

    C1 --> ExternalSeagate
    C3 --> ExternalSeagate
    C2 --> ExternalSeagate
```


