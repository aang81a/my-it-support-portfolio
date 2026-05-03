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
```

The tests helped separate the problem into three areas:

| Test                | Purpose                        |
| ------------------- | ------------------------------ |
| `ping 192.168.99.1` | Tests the configured gateway   |
| `ping 8.8.8.8`      | Tests external IP connectivity |
| `ping google.com`   | Tests DNS/name resolution      |

Because the static configuration was wrong, the connectivity tests failed.

PC3 – Home Wi-Fi

PC3 – Mobile Hotspot

PC2 – Ethernet

Step 5: DHCP Restored

The fix was to restore automatic IPv4 and DNS configuration.

The adapter was changed back to:

Obtain an IP address automatically
Obtain DNS server address automatically
PC3 – Home Wi-Fi

PC3 – Mobile Hotspot

PC2 – Ethernet

Step 6: DHCP Release and Renew

After restoring automatic settings, the following commands were used:

ipconfig /release
ipconfig /renew

These commands are useful because they force the adapter to release the old IP lease and request fresh network settings from DHCP.

PC3 – Home Wi-Fi

PC3 – Mobile Hotspot

PC2 – Ethernet

Step 7: IP Configuration After DHCP Restore

After DHCP was restored, each device received a valid IP configuration again.

PC3 – Home Wi-Fi

PC3 – Mobile Hotspot

PC2 – Ethernet

Step 8: Successful Connectivity Tests

After DHCP was restored, external IP and DNS tests succeeded.

PC3 – Home Wi-Fi

PC3 – Mobile Hotspot

PC2 – Ethernet

Step 9: Browser Access Restored

On PC2 Ethernet, browser access was also confirmed after restoring DHCP.

This provides a user-facing confirmation that the internet connection was restored, not only command-line proof.

DHCP Results After Fix
Device / Network Context	IPv4 Address	Subnet Mask	Default Gateway	Interpretation
PC3 – Mobile Hotspot	10.235.249.154	255.255.255.0	10.235.249.153	DHCP assigned a private mobile hotspot network range
PC3 – Home Wi-Fi	192.168.1.25	255.255.255.0	192.168.1.1	DHCP assigned the normal home router network range
PC2 – Ethernet	192.168.1.110	255.255.255.0	192.168.1.1	DHCP assigned an address in the same home LAN range
Comparison: Home Wi-Fi vs Mobile Hotspot vs Ethernet
Context	What was different	What stayed the same
PC3 – Mobile Hotspot	Different private IP range: 10.235.249.x	Same troubleshooting method
PC3 – Home Wi-Fi	Home LAN range: 192.168.1.x	Same DHCP restore process
PC2 – Ethernet	Wired adapter instead of Wi-Fi	Same static IP misconfiguration symptoms

The comparison shows that the network range can change depending on the connection type, but the troubleshooting logic remains the same.

Root Cause

The issue was caused by an incorrect static IPv4 configuration.

The manually configured IP address and gateway did not match the active network. Because of this, the computer could not communicate correctly with the network gateway or the internet.

Fix Applied

The IPv4 configuration was restored to automatic settings:

IP address: automatic via DHCP
DNS server: automatic via DHCP

After restoring DHCP, the devices received valid IP configurations and connectivity was restored.

Result
The wrong static IP configuration was identified.
The failed gateway, external IP, and DNS tests confirmed the connectivity problem.
DHCP was restored.
Valid IP settings were assigned again.
Ping tests succeeded.
Browser access was confirmed on PC2 Ethernet.
Lessons Learned
A device can appear connected but still fail because of incorrect IPv4 settings.
A wrong default gateway prevents the device from reaching other networks.
ipconfig is useful for checking IP address, subnet mask, and default gateway.
ping 8.8.8.8 tests external IP connectivity.
ping google.com tests DNS/name resolution.
DHCP reduces manual configuration errors.
Comparing multiple devices makes it easier to understand network behaviour across Wi-Fi, mobile hotspot, and Ethernet.
Skills Demonstrated
Windows network adapter configuration
IPv4 troubleshooting
DHCP restore
Command Prompt diagnostics
ipconfig
ipconfig /release
ipconfig /renew
ping
Gateway testing
External IP testing
DNS testing
Ethernet vs Wi-Fi comparison
Mobile hotspot vs home network comparison
Troubleshooting documentation
Root cause identification
