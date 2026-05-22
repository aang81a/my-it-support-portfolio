# Case 01 – No Network Access / APIPA Address

## Concept

This future case will document a Windows network issue where the device is set to obtain an IP address automatically, but DHCP does not provide a valid address.

As a result, Windows assigns an Automatic Private IP Addressing (APIPA) address in the `169.254.x.x` range.

This case is different from Case 04:

- **Case 04:** wrong manual static IPv4/DNS configuration
- **Case 01:** DHCP failure / APIPA address assigned by Windows

---

## Problem

A user reports that their computer has no network or internet access.

The device appears connected to Wi-Fi or Ethernet, but it cannot reach the router, internet, or internal network resources.

When `ipconfig` is checked, the device shows an APIPA address such as:

```text
IPv4 Address . . . . . . . . . . . : 169.254.x.x
Subnet Mask . . . . . . . . . . . : 255.255.0.0
Default Gateway . . . . . . . . . : 
```

---

## Environment

- Device: HP All-in-One
- Operating system: Windows 10
- Network adapter: Wi-Fi
- Test network: Mobile hotspot or local Wi-Fi
- IP configuration: Automatic IPv4 / DHCP

---

## Symptoms

- No internet connection
- Device may show as connected
- Cannot reach the router/default gateway
- Websites do not load
- Internal resources are not accessible
- `ipconfig` shows `169.254.x.x`
- Default gateway is usually missing

---

## Technical Background

APIPA stands for **Automatic Private IP Addressing**.

Windows assigns an APIPA address when a device is configured to obtain an IP address automatically, but no valid DHCP address is received.

In troubleshooting, an APIPA address usually means:

- the DHCP server did not respond
- the device could not reach DHCP
- the network connection is incomplete
- the adapter did not receive a valid network configuration

---

## Diagnosis Steps

1. Confirm whether the issue affects one device or multiple devices.
2. Check whether Wi-Fi or Ethernet is connected.
3. Verify that the network adapter is enabled.
4. Run:
 
`ipconfig`

5. Check whether the IPv4 address is in the APIPA range:

`169.254.x.x`
   
6. Check whether a default gateway is missing.
7. Test local TCP/IP stack:

`ping 127.0.0.1`

8. Test gateway connectivity, if a gateway exists:

`ping <gateway IP>`

9. Test external IP connectivity:

`ping 8.8.8.8`

10. Test DNS/name resolution:

`ping google.com`


---

## Possible Root Cause

The device did not receive a valid IP address from DHCP, so Windows assigned an APIPA address.

Possible causes include:

- DHCP server not reachable
- Wi-Fi or Ethernet connection problem
- network adapter issue
- router/mobile hotspot DHCP issue
- disabled or unstable network connection
- DHCP lease renewal failure

---

## Solution Steps

1. Restart the network adapter.
2. Disconnect and reconnect Wi-Fi or Ethernet.
3. Run:

```text
ipconfig /release

ipconfig /renew
```

4. Restart the router, hotspot, or device if needed.
5. Confirm that the device receives a valid IPv4 address.
6. Confirm that a default gateway is assigned.
7. Test gateway, external IP, and DNS connectivity again.

---

## Expected Result

- Device receives a valid IPv4 address outside the `169.254.x.x` range.
- Default gateway is assigned.
- Gateway ping succeeds.
- External IP connectivity works.
- DNS/name resolution works.
- Internet or network access is restored.

---

## Screenshots
(To be added later)

- `ipconfig` showing APIPA address
- missing default gateway
- `ipconfig /release`
- `ipconfig /renew`
- valid DHCP address after renewal
- successful gateway ping
- successful external IP ping
- successful DNS/name resolution test

---

## Lessons Learned

- APIPA `169.254.x.x` indicates that Windows did not receive a valid DHCP address.
- A device can appear connected but still have no usable network configuration.
- Missing default gateway is a strong sign that the device cannot reach other networks.
- `ipconfig` is the first important check in DHCP/APIPA troubleshooting.
- `ipconfig /release` and `ipconfig /renew` can help request a fresh DHCP lease.
- The case should be documented separately from static IP misconfiguration because the root cause is different.

---

## Skills Demonstrated

- APIPA recognition
- DHCP client-side troubleshooting
- Windows network adapter troubleshooting
- IP configuration analysis with `ipconfig`
- Connectivity testing with `ping`
- Structured network troubleshooting documentation
