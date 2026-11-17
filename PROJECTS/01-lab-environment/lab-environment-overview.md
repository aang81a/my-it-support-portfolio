# 🖥 Lab Environment Overview

---

This document provides an overview of the home lab environment, including the computers, storage devices, backup infrastructure, and virtual Windows client–server environment used for practical IT projects.

---

## 1. Legacy Storage and Backup Environment

```mermaid
flowchart TB

    TITLE["LEGACY STORAGE<br/>TROUBLESHOOTING<br/>AND BACKUP"]

    C1["Computer 1<br/>Legacy ASUS desktop<br/>IDE/PATA storage testing"]
    C3["Computer 3<br/>HP All-in-One<br/>RAM upgrade<br/>+ backup and home lab workstation"]
    C2["Computer 2<br/>HP black desktopStorage recovery and backup"]

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

---

## 2. Virtual Home Lab Environment

```mermaid
flowchart TB
    HOME["Virtual HOME LAB ENVIRONMENT"]
    TITLE["Helpdesk Environment"]

    C3["Computer 3<br/>HP All-in-One<br/>Windows 10 Home · 16 GB RAM<br/>Virtualization"]
    C4["Computer 4<br/>HP Pavilion Laptop<br/>Windows 11"]

    VB["Oracle VirtualBox 7.2.22"]
    CLIENT["WIN11-CLIENT01<br/>Windows 11 Pro<br/>192.168.50.20"]
    SERVER["DC01<br/>Windows Server 2025<br/>AD DS + DNS<br/>192.168.50.10"]
    NETWORK["AD-LAB<br/>Internal Network<br/>192.168.50.0/24"]
    DOMAIN["corp.techlog.test<br/>Active Directory Domain"]

    HOME --> C3
    TITLE --> C4
    TITLE --> C3

    C3 --> VB
    VB --> CLIENT
    VB --> SERVER
    CLIENT --- NETWORK
    SERVER --- NETWORK
    SERVER --> DOMAIN
```

---
