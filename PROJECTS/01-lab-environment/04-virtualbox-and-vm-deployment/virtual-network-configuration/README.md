# Phase 05 — Virtual Network Configuration

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Virtual--Network-blue)

---

## Objective

Connect `DC01` and `WIN11-CLIENT01` through an isolated VirtualBox internal network.

---

## Network Configuration

| Setting | `DC01` | `WIN11-CLIENT01` |
|---|---|---|
| Adapter 1 | NAT | NAT |
| Adapter 2 | Internal Network `AD-LAB` | Internal Network `AD-LAB` |
| Internal IPv4 | `192.168.50.10` | `192.168.50.20` |
| Subnet mask | `255.255.255.0` | `255.255.255.0` |
| Internal gateway | None | None |
| Client DNS | — | `192.168.50.10` |

---

## Main Steps

### 1. Configure VirtualBox network adapters

Retained **NAT** on Adapter 1 for external connectivity. Configured Adapter 2 as **Internal Network (`AD-LAB`)** on both VMs to allow private client–server communication.

<img src="screenshots/57%20DC01%20Network%2003%20Setup%20Adapter%202.png" alt="DC01: internal AD-LAB adapter configured" width="650">

<img src="screenshots/57%20WIN11%20Network%2003%20Setup%20Adapter%202.png" alt="Windows 11 client: matching AD-LAB adapter configured" width="650">

---

### 2. Assign static IPv4 addresses

Set fixed IPv4 addresses on the internal adapters. Left the internal default gateway empty to keep routing separate from the NAT connection.

<img src="screenshots/58%20DC01%20Server%20Manager06%20Local%20Server%20Eth2%20IPv4%20config.png" alt="DC01: static IPv4 configuration" width="650">

<img src="screenshots/59%20WIN11%20Server%20Manager%20Eth2%20IPv4%20config%20check.png" alt="Windows 11 client: static IPv4 configuration verified" width="650">

---

### 3. Configure Windows Firewall

Enabled inbound **ICMPv4 Echo Request** rules on both systems for connectivity testing. Restricted the permitted remote addresses to the lab network.

<img src="screenshots/63%20DC01%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20Enabled.png" alt="DC01: ICMPv4 Echo Request rule enabled" width="650">

<img src="screenshots/71%20Win11%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20Properties%20Enabled.png" alt="Windows 11: ICMPv4 Echo Request rule enabled" width="650">

<img src="screenshots/75%20DC01%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20-%20Scope%20-%20Remote%20IP.png" alt="DC01: firewall rule scope restricted" width="650">

<img src="screenshots/74%20Win11%20Inbound%20Rules%20-%20Echo%20request%20IPv4%20-%20Scope%20-%20Remote%20IP.png" alt="Windows 11: firewall rule scope restricted" width="650">

---

### 4. Verify connectivity

Tested both directions with `ping` after configuring the firewall. Both checks returned **0% packet loss**.

<img src="screenshots/64%20WIN11%20ping%200%25%20loss.png" alt="Windows 11 to DC01: successful ping" width="650">

<img src="screenshots/76%20DC01%20ping%200%25%20loss.png" alt="DC01 to Windows 11: successful ping" width="650">

---

## Result

Bidirectional IPv4 communication between `DC01` and `WIN11-CLIENT01` verified over `AD-LAB`. DNS and domain services are configured and tested in Phase 06.
