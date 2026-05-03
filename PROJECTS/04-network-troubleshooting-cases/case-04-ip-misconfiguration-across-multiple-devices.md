# Case 04 – IP Misconfiguration Across Multiple Devices

## Overview

This case documents a simulated IPv4 misconfiguration across multiple Windows devices and network connection types.

The purpose of the case was to reproduce a common first-level IT support issue: a device appears connected to a network, but internet access fails because the IPv4 configuration is incorrect.

The same troubleshooting process was tested on:

- PC3 – HP All-in-One / Home Wi-Fi
- PC3 – HP All-in-One / Mobile Hotspot
- PC2 – Desktop / Ethernet

This makes the case useful not only as a troubleshooting example, but also as a comparison of how DHCP assigns different IP addresses depending on the network.

---

## Environment

- Windows 10
- Wi-Fi adapter
- Ethernet adapter
- Home router network
- Mobile hotspot network
- DHCP-enabled networks
- Command Prompt
- Network adapter IPv4 settings

---

## Devices Tested

| Device / Network Context | Adapter Type | Network State | Purpose in Case |
|---|---|---|---|
| PC3 – HP All-in-One / Home Wi-Fi | Wi-Fi adapter | Connected to home router | Main IP misconfiguration test |
| PC3 – HP All-in-One / Mobile Hotspot | Wi-Fi adapter | Connected to phone hotspot | DHCP comparison with different IP range |
| PC2 – Desktop / Ethernet | Ethernet adapter | Connected by cable | Comparison with wired adapter behaviour |

---

## Problem Simulated

A wrong static IPv4 configuration was entered manually.

The simulated incorrect configuration used:

| Setting | Value |
|---|---|
| IP address | 192.168.99.50 |
| Subnet mask | 255.255.255.0 |
| Default gateway | 192.168.99.1 |
| Preferred DNS server | 8.8.8.8 |
| Alternative DNS server | 1.1.1.1 |

This configuration caused internet connectivity to fail because the IP address and gateway did not match the active network.

---

## Step 1: Baseline Check

Before changing the IPv4 settings, the adapter configuration was checked.

The baseline state showed that IPv4 and DNS were configured automatically through DHCP.

### PC3 – Home Wi-Fi

![PC3 home Wi-Fi IPv4 before change](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-01-ipv4-before-change-dhcp.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot IPv4 before change](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-01-ipv4-before-change-dhcp.png)

### PC2 – Ethernet

![PC2 Ethernet IPv4 before change](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-01-ipv4-before-change-dhcp.png)

---

## Step 2: Wrong Static IP Configured

A wrong static IPv4 address was configured manually on each tested connection.

This created a controlled network fault for troubleshooting practice.

### PC3 – Home Wi-Fi

![PC3 home Wi-Fi wrong static IP configured](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-02-wrong-static-ip-configured.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot wrong static IP configured](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-02-wrong-static-ip-configured.png)

### PC2 – Ethernet

![PC2 Ethernet wrong static IP configured](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-02-wrong-static-ip-configured.png)

---

## Step 3: IP Configuration After Misconfiguration

After the wrong static IP settings were applied, `ipconfig` was used to check the adapter state.

The output confirmed that the device no longer had a valid working configuration for the active network.

### PC3 – Home Wi-Fi

![PC3 home Wi-Fi ipconfig wrong static IP](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-03-ipconfig-wrong-static-ip-no-internet.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot ipconfig wrong static IP](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-03-ipconfig-wrong-static-ip-no-internet.png)

### PC2 – Ethernet

![PC2 Ethernet ipconfig wrong static IP](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-03-ipconfig-wrong-static-ip-no-internet.png)

---

## Step 4: Failed Connectivity Tests

The following tests were used:

```text
ping 192.168.99.1
ping 8.8.8.8
ping google.com
