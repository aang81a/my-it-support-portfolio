# Case 04 – IP Misconfiguration Across Multiple Devices

## Overview

This case documents a simulated IPv4 misconfiguration across multiple Windows devices and network connection types.

The purpose of the case was to reproduce a common first-level IT support issue: a device appears connected to a network, but internet access fails because the IPv4 configuration is incorrect.

The case also compares how the same troubleshooting process behaves across different connection types: home Wi-Fi, mobile hotspot, and Ethernet. This comparison helps show that DHCP can assign different valid network ranges depending on the network, while the troubleshooting logic remains the same.

---

## Test Environment and Devices

This case was tested on two Windows 10 computers across three network contexts.

| Device / Network Context | Adapter Type | Network State | Purpose in Case |
|---|---|---|---|
| PC3 – HP All-in-One / Home Wi-Fi | Wi-Fi adapter | Connected to home router | Main IP misconfiguration test |
| PC3 – HP All-in-One / Mobile Hotspot | Wi-Fi adapter | Connected to phone hotspot | DHCP comparison with different IP range |
| PC2 – Desktop / Ethernet | Ethernet adapter | Connected via Ethernet cable | Comparison with wired adapter behaviour |

Tools and settings used:

- Network adapter IPv4 settings
- DHCP-enabled home router network
- DHCP-enabled mobile hotspot network
- Windows Network Connections (`ncpa.cpl`)
- Command Prompt (`cmd`)

---

## Problem Simulated

A wrong static IPv4 configuration was entered manually.

The simulated incorrect static IPv4 configuration used:

| Setting | Value |
|---|---|
| IP address | 192.168.99.50 |
| Subnet mask | 255.255.255.0 |
| Default gateway | 192.168.99.1 |
| Preferred DNS server | 8.8.8.8 |
| Alternative DNS server | 1.1.1.1 |

The manually configured IP address and gateway did not match the active network. Because of this, the computer could not communicate correctly with the network gateway or the internet.

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

A wrong static IPv4 and DNS configuration was entered manually on each tested connection.

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

To verify the impact of the invalid configuration, connectivity was tested in three layers: gateway access, external IP access, and DNS/name resolution.

The following tests were used:

| Test | Purpose |
|---|---|
| `ping 192.168.99.1` | Tests the configured gateway |
| `ping 8.8.8.8` | Tests external IP connectivity |
| `ping google.com` | Tests DNS/name resolution |

The failed results confirmed that the incorrect static configuration prevented normal network communication.

### PC3 – Home Wi-Fi

![PC3 home Wi-Fi failed ping tests](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-04-ping-gateway-external-google-failed.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot failed ping tests](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-04-ping-gateway-external-google-failed.png)

### PC2 – Ethernet

![PC2 Ethernet failed ping tests](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-04-ping-gateway-external-google-failed.png)

---

## Step 5: DHCP Restored

DHCP (Dynamic Host Configuration Protocol) dynamically assigns valid network settings after the adapter is switched back from incorrect static settings to automatic IPv4 and DNS configuration.

Wrong static IPv4 and DNS configuration → switch adapter back to DHCP/automatic settings → valid network settings assigned → connectivity restored

The adapter was changed back to:

- Obtain an IP address automatically
- Obtain DNS server address automatically


### PC3 – Home Wi-Fi

![PC3 home Wi-Fi DHCP restored](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-05-dhcp-restored-ipv4-settings.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot DHCP restored](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-05-dhcp-restored-ipv4-settings.png)

### PC2 – Ethernet

![PC2 Ethernet DHCP restored](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-05-dhcp-restored-ipv4-settings.png)

---

## Step 6: DHCP Release and Renew

After restoring automatic IP and DNS settings, the adapter needed to request fresh DHCP settings. The following commands were used to release the old IP lease and renew the network configuration:

```text
ipconfig /release
ipconfig /renew
```

### PC3 – Home Wi-Fi

![PC3 home Wi-Fi DHCP release](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-06-release-after-dhcp.png)

![PC3 home Wi-Fi DHCP renew](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-07-renew-after-dhcp.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot DHCP release](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-06-release-after-dhcp.png)

![PC3 mobile hotspot DHCP renew](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-07-renew-after-dhcp.png)

### PC2 – Ethernet

![PC2 Ethernet DHCP release](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-06-release-after-dhcp.png)

![PC2 Ethernet DHCP renew](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-07-renew-after-dhcp.png)

---

## Step 7: IP Configuration After DHCP Restore

After DHCP was restored, each device received valid network settings again, including an IPv4 address, subnet mask, default gateway, and DNS configuration.

### PC3 – Home Wi-Fi

![PC3 home Wi-Fi ipconfig after DHCP restore](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-08-ipconfig-after-dhcp-restore.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot ipconfig after DHCP restore](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-08-ipconfig-after-dhcp-restore.png)

### PC2 – Ethernet

![PC2 Ethernet ipconfig after DHCP restore](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-08-ipconfig-after-dhcp-restore.png)

---

## Step 8: Successful Connectivity Tests

After the network configuration was restored, the connection was tested again and the results confirmed that external IP access and DNS resolution were working.

### PC3 – Home Wi-Fi

![PC3 home Wi-Fi successful ping tests](screenshots/case-04-ip-misconfiguration/computer-3/home-wifi/pc3-homewifi-09-ping-external-and-google-success.png)

### PC3 – Mobile Hotspot

![PC3 mobile hotspot successful ping tests](screenshots/case-04-ip-misconfiguration/computer-3/mobile-hotspot/pc3-mobile-09-ping-external-and-google-success.png)

### PC2 – Ethernet

![PC2 Ethernet successful ping tests](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-09-ping-external-and-google-success.png)

----

## Step 9: Browser Access Restored

After command-line tests confirmed restored connectivity, a browser check was used as a final user-facing verification that internet access was working again.


![PC2 Ethernet browser internet restored](screenshots/case-04-ip-misconfiguration/computer-2/ethernet/pc2-ethernet-10-browser-internet-restored.png)


---

## Fix Applied

The IPv4 configuration was restored to automatic settings:

- IP address: automatic via DHCP
- DNS server: automatic via DHCP

After restoring DHCP, the devices received valid IP configurations and connectivity was restored.

---

## DHCP Results After Fix

| Device / Network Context | IPv4 Address | Subnet Mask | Default Gateway | Interpretation |
|---|---:|---:|---:|---|
| PC3 – Home Wi-Fi | 192.168.1.25 | 255.255.255.0 | 192.168.1.1 | DHCP assigned an address in the home router network range |
| PC3 – Mobile Hotspot | 10.235.249.154 | 255.255.255.0 | 10.235.249.153 | DHCP assigned an address in the mobile hotspot network range |
| PC2 – Ethernet | 192.168.1.110 | 255.255.255.0 | 192.168.1.1 | DHCP assigned an address in the same home LAN range |

---

## Comparison: Home Wi-Fi vs Mobile Hotspot vs Ethernet

| Context | What was different | What stayed the same |
|---|---|---|
| PC3 – Home Wi-Fi | Home LAN range: `192.168.1.x` | Same DHCP restore process |
| PC3 – Mobile Hotspot | Different private IP range: `10.235.249.x` | Same troubleshooting method |
| PC2 – Ethernet | Wired adapter instead of Wi-Fi | Same static IP misconfiguration symptoms |

The comparison shows that the network range can change depending on the connection type, but the troubleshooting logic remains the same.

---

## Verification Summary

- The wrong static IP configuration was identified.
- The failed gateway, external IP, and DNS tests confirmed the connectivity problem.
- DHCP was restored.
- Valid IP settings were assigned again.
- Ping tests succeeded.
- Browser access was confirmed.

---

## Skills Demonstrated

- Windows network adapter configuration
- IPv4 troubleshooting
- DHCP restore
- Command Prompt diagnostics

- Checking IP configuration with `ipconfig`
- Verifying connectivity with command-line tests:
  - Testing the configured gateway with `ping 192.168.99.1`
  - Testing external IP connectivity with `ping 8.8.8.8`
  - Testing DNS/name resolution with `ping google.com`
- Releasing the old IP lease with `ipconfig /release`
- Renewing the network configuration with `ipconfig /renew`
- Comparing Ethernet, home Wi-Fi, and mobile hotspot behaviour
- Documenting a structured network troubleshooting workflow

---

## Notes

- A device can appear connected but still fail because of incorrect IPv4 settings.
- A wrong default gateway prevents the device from reaching other networks.
- `ipconfig` is useful for checking IP address, subnet mask, and default gateway.
- `ping 8.8.8.8` tests external IP connectivity.
- `ping google.com` tests DNS/name resolution.
- DHCP reduces manual configuration errors.
- Comparing multiple devices makes it easier to understand network behaviour across Wi-Fi, mobile hotspot, and Ethernet.
