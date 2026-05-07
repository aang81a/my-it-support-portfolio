case-01-no-network-access (similar to case-04).md

NOTE:

Automatic Private IP Addressing.

It is what Windows does when a computer is set to get an IP address automatically, but DHCP does not give it one.

So Windows gives itself an emergency/local address like:

169.254.x.x

Example:

- IPv4 Address: 169.254.45.22
- Subnet Mask: 255.255.0.0
- Default Gateway: usually missing

What it means in troubleshooting:

APIPA = the device did not receive a valid IP address from DHCP

Typical result:

- The device may show “connected”
- It cannot reach the router/default gateway
- It usually has no internet
- ipconfig shows 169.254.x.x

So for your portfolio:

- Case 04 = wrong manual static IP configuration
- Case 01 = DHCP failed, Windows assigned APIPA 169.254.x.x

That is why Case 01 should be different from Case 04.


# Case 01 – No Network Access

## Problem
A user reports that their computer has no network or internet access.
The test was performed on the Wi-Fi adapter while connected to a mobile hotspot.  
A wrong static IPv4 configuration was applied to simulate an IP misconfiguration issue.

## Environment (old note)
- Windows 10 / Windows 11
- Local network (LAN or Wi-Fi)
- DHCP-enabled network

## Environment

- Device: HP All-in-One
- Operating system: Windows 10
- Network adapter: Wi-Fi
- Test network: Redmi 13 mobile hotspot
- IP configuration: IPv4

## Symptoms
- No internet connection
- Cannot access internal network resources
- "No network access" or "Limited connectivity"
- Unable to load websites

---

## Diagnosis Steps

1. Checked physical connection:
   - Ethernet cable connected / Wi-Fi enabled

2. Verified network adapter status:
   - Adapter is enabled and functioning

3. Ran:
   ipconfig

4. Checked IP configuration:
   - IP address
   - Subnet mask
   - Default gateway
   - DNS server

5. Tested connectivity:
   ping 127.0.0.1
   ping <gateway IP>
   ping 8.8.8.8
   ping google.com

---

## Root Cause
The device did not receive a valid IP address from the network (APIPA address 169.254.x.x).

---

## Solution

1. Restarted network adapter
2. Ran:
   ipconfig /release
   ipconfig /renew

3. Verified DHCP configuration
4. Ensured network cable / Wi-Fi connection is active

---

## Result

- Device received valid IP address
- Gateway reachable
- Internet access restored
- Internal network resources accessible

---

## Screenshots
(To be added later)

- ipconfig showing APIPA address
- ipconfig after renewal
- successful ping test

---

## Lessons Learned

- Always check IP configuration first
- APIPA (169.254.x.x) indicates DHCP failure
- Basic connectivity tests help isolate the issue quickly

---

## Skills Demonstrated

- Network troubleshooting
- IP configuration analysis
- Use of command-line tools (ipconfig, ping)
- Problem diagnosis and resolution
- Structured documentation
