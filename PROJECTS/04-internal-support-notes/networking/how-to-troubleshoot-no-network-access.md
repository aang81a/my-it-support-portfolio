# How to Troubleshoot No Network Access
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Type](https://img.shields.io/badge/Type-SOP-purple)
![Topic](https://img.shields.io/badge/Topic-Windows%20Networking-blue)
![Audience](https://img.shields.io/badge/Audience-IT%20Support%20Technicians-lightgrey)

---

<table>
<tr>
<td valign="middle">
<img src="../../IMAGES/tech-log-solutions-logo.png" width="220" alt="TechLog Solutions Logo">
</td>
<td valign="middle"> <em>Internal IT Standard Operating Procedure</em>
</td>
</tr>
</table>

**Document ID:** `NET-1002`  
**Category:** Network Support / Connectivity Troubleshooting   
**Target Audience:** IT Support / Service Desk  
**Last Updated:** May 2026

---

## Purpose

This note explains the basic support workflow for checking a device with no network access.

It is intended as an internal quick-reference note for first-level IT support tasks.

---

## Support Context

No network access can be caused by local device settings, Wi-Fi or Ethernet connection issues, incorrect IP configuration, DNS problems, VPN issues, or a wider network outage.

The first goal is to identify whether the issue affects only one device or multiple users/devices.

---

## Before You Start

Check the following before changing network settings:

- Confirm whether the issue affects one user, one device, or multiple users.
- Confirm whether the user is connected by Wi-Fi, Ethernet, or VPN.
- Check whether other websites or internal resources are affected.
- Ask whether the issue started after a restart, update, VPN change, or network change.
- Confirm whether the device is on the correct network.
- Do not change IP, DNS, VPN, or firewall settings unless the change is required and approved.

---

## Procedure

1. Confirm whether the issue affects one device or multiple devices.
2. Confirm whether the user is connected by Wi-Fi, Ethernet, or VPN.
3. Check whether the network adapter is enabled.
4. Verify IP configuration using `ipconfig`.
5. Check whether the device has a valid IP address, subnet mask, default gateway, and DNS server.
6. Test connectivity to the local gateway using `ping`.
7. Test external connectivity, for example with `ping 8.8.8.8`.
8. Test name resolution if DNS is suspected, for example with `ping google.com`.
9. Restart the browser, network adapter, or device if needed.
10. Escalate the issue if the problem appears to affect multiple users, network infrastructure, DNS, DHCP, VPN, or firewall rules.

---

## Common Issues

- **Wi-Fi is disconnected:** The device may not be connected to the correct wireless network.
- **Ethernet cable is unplugged:** The physical network connection may be missing or loose.
- **Invalid IP address:** The device may not have received a valid IP configuration from DHCP.
- **Missing default gateway:** The device may not be able to reach other networks.
- **DNS issue:** External IP addresses may respond, but domain names may not resolve.
- **VPN issue:** Internal resources may fail if VPN is disconnected or unstable.
- **Multiple users affected:** The problem may be related to network infrastructure, DHCP, DNS, firewall, or internet service.

---

## Escalation Triggers

Escalate the case if:

- multiple users or devices are affected
- the default gateway cannot be reached
- DHCP does not provide a valid IP address
- DNS resolution fails for multiple users
- VPN connection fails for multiple users
- firewall, router, switch, or access point issues are suspected
- the issue appears to be outside first-level support scope

---

## Ticket Documentation Notes

Document only support-relevant information:

- affected user
- affected device
- connection type: Wi-Fi, Ethernet, or VPN
- whether one or multiple users are affected
- IP configuration result
- gateway ping result
- external IP ping result
- DNS/name resolution test result
- actions already taken
- whether escalation was required

Include relevant test results if they help explain the issue, such as IP configuration, gateway ping, external IP ping, or DNS/name resolution results.

Do not document unnecessary private information such as usernames, personal device names, Wi-Fi names, public IP addresses, global IPv6 addresses, or private file paths.

---

## Security and Privacy Notes

- Do not publish screenshots with public IP addresses, global IPv6 addresses, Wi-Fi names, or private user details.
- Do not change DNS, IP, VPN, or firewall settings without approval.
- Use only the test results needed for troubleshooting and ticket documentation.
- Escalate suspected infrastructure, DNS, DHCP, VPN, or firewall issues.
