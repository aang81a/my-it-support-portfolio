Step 1: Baseline check
- PC3 home Wi-Fi
- PC3 mobile hotspot
- PC2 Ethernet

Step 2: Wrong static IP configured
- PC3 home Wi-Fi
- PC3 mobile hotspot
- PC2 Ethernet

Step 3: Failed connectivity tests
- PC3 home Wi-Fi
- PC3 mobile hotspot
- PC2 Ethernet

Step 4: DHCP restored
- PC3 home Wi-Fi
- PC3 mobile hotspot
- PC2 Ethernet

# Case 04 – IP Misconfiguration Across Multiple Devices

## Overview

## Environment

## Devices Tested

## Devices Tested

| Device / Network Context | Adapter Type | Network State | Purpose in Case |
|---|---|---|---|
| PC3 – HP All-in-One / Home Wi-Fi | Wi-Fi adapter | Connected to home router | Main IP misconfiguration test |
| PC3 – HP All-in-One / Mobile Hotspot | Wi-Fi adapter | Connected to phone hotspot | DHCP comparison with different IP range |
| PC2 – Desktop / Ethernet | Ethernet adapter | Cable unplugged, later connected | Comparison with wired adapter behaviour |

## Baseline Network State

## Simulated Misconfiguration

## Symptoms After Misconfiguration

## Diagnostic Commands Used

## Root Cause

## Fix Applied

## DHCP Results After Fix

| Device / Network Context | IPv4 Address | Subnet Mask | Default Gateway | Interpretation |
|---|---:|---:|---:|---|
| PC3 – Mobile Hotspot | 10.235.249.154 | 255.255.255.0 | 10.235.249.153 | DHCP assigned a private mobile hotspot network range |
| PC3 – Home Wi-Fi | 192.168.1.25 | 255.255.255.0 | 192.168.1.1 | DHCP assigned the normal home router network range |
| PC2 – Ethernet | 192.168.1.110 | 255.255.255.0 | 192.168.1.1 | DHCP assigned an address in the same home LAN range |

## Comparison: Home Wi-Fi vs Mobile Hotspot vs Ethernet

## Result

## Lessons Learned

## Skills Demonstrated

## Screenshots

-------------
------------


# Case 04 – IP Misconfiguration - OLD

## Problem
A simulated user reports that their computer cannot access the network or the internet.

## Environment
- Windows 10 / Windows 11
- Local network (LAN)
- DHCP-enabled network
- Domain environment (optional)

## Symptoms
- No internet access
- Unable to reach internal resources
- "Network unreachable" or "No connectivity" message
- Cannot ping gateway or external IP

---

## Diagnosis Steps

1. Checked physical connection (Ethernet/Wi-Fi connected)
2. Verified network adapter status
3. Ran command:
   ipconfig

4. Observed:
   - Static IP address configured
   - IP address not in correct subnet
   - Missing or incorrect default gateway

5. Tested connectivity:

```text
ipconfig
ping 8.8.8.8
ping google.com
ipconfig /release
ipconfig /renew
```

→ Both tests failed

---

## Root Cause
The device was configured with an incorrect static IP address instead of using DHCP.

As a result:
- The device was outside the correct network range
- No valid gateway was reachable

---

## Solution

1. Open Network Settings
2. Navigate to:
   Network & Internet → Adapter Options
3. Open Properties of the network adapter
4. Select:
   Internet Protocol Version 4 (IPv4)
5. Change configuration:
   - Set to "Obtain an IP address automatically"
   - Set to "Obtain DNS server address automatically"

6. Apply changes

7. Run:
   ipconfig /release
   ipconfig /renew

---

## Result

- Device received correct IP address from DHCP
- Gateway reachable
- Internet connectivity restored
- Internal network resources accessible

---

## Screenshots
(To be added later)

- IP configuration before fix
- Incorrect static IP settings
- DHCP settings after fix
- Successful ping test

---

## Lessons Learned

- Incorrect IP configuration is a common cause of connectivity issues
- Always verify IP, subnet, and gateway first
- DHCP simplifies network management and reduces manual errors
- Command line tools are essential for quick diagnostics

---

## Skills Demonstrated

- Network troubleshooting
- IP configuration analysis
- Use of command-line tools (ipconfig, ping)
- Root cause identification
- Problem resolution and documentation

- Diagnosing IPv4 configuration issues
- Identifying incorrect static IP configuration
- Verifying DHCP-based network settings
- Using `ipconfig` and `ping` for connectivity testing
- Restoring network connectivity through adapter configuration
- Documenting troubleshooting steps and resolution
