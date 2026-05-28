# Lab Environment Overview

---

This diagram shows the main devices and storage components used in the legacy storage troubleshooting and backup case. It gives a quick overview of which computers, hard drives, optical drives, and backup storage were involved.

---

```mermaid
flowchart TB
    CASE["Legacy Storage Troubleshooting and Backup<br/>Hardware, storage detection and backup workflow"]

    C1["Computer 1<br/>Legacy ASUS desktop<br/>BIOS/boot checks"]
    C2["Computer 2<br/>HP black desktop<br/>Recovery, backup and home lab workstation"]
    C3["Computer 3<br/>HP All-in-One<br/>RAM upgrade documentation<br/>Backup preparation"]

    Samsung["Samsung SP1203N<br/>IDE/PATA HDD<br/>tested in Computer 1"]
    ASUS["ASUS DRW-1608P3S<br/>DVD/CD writer<br/>detected in BIOS"]
    LG["LG DVD drive<br/>additional optical drive tested"]

    InternalSeagate["Internal Seagate SATA HDD<br/>Windows system drive in Computer 2"]
    WD["WD SATA HDD source<br/>legacy data drive tested in Computer 2"]
    ExternalSeagate["Seagate external drive<br/>final backup destination"]

    CASE --> C1
    CASE --> C2
    CASE --> C3

    Samsung --> C1
    ASUS --> C1
    LG --> C1

    InternalSeagate --> C2
    WD --> C2
    C2 --> ExternalSeagate
```

---

```mermaid
flowchart TB
    subgraph Computers["Computers used in the case"]
        C1["Computer 1<br/>Legacy ASUS desktop<br/>IDE/PATA storage testing system"]
        C2["Computer 2<br/>HP black desktop<br/>Recovery, backup and home lab workstation"]
        C3["Computer 3 - HP All-in-One<br/>RAM upgrade documentation<br/>Backup preparation"]
    end

    subgraph Storage["Storage devices"]
        Samsung["Samsung SP1203N<br/>IDE/PATA HDD<br/>tested in Computer 1"]
        WD["WD SATA HDD source<br/>Legacy storage source<br/>tested in Computer 2"]
        SeagateInternal["Internal Seagate SATA HDD<br/>Computer 2 system drive"]
        SeagateExternal["Seagate external drive<br/>USB backup destination"]
    end

    subgraph Optical["Optical drives"]
        ASUS["ASUS DRW-1608P3S<br/>DVD/CD writer<br/>detected in BIOS on Computer 1"]
        LG["LG DVD drive<br/>additional DVD/CD writer<br/>tested in Computer 1"]
    end

    Samsung --> C1
    ASUS --> C1
    LG --> C1

    SeagateInternal --> C2
    WD --> C2
    WD --> SeagateExternal

    C3 -. "backup preparation context" .-> SeagateExternal
```
