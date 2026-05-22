# How to Troubleshoot No Network Access

## Purpose

This guide explains basic checks when a user reports no network access.

It is intended as a short internal support note for first-level IT support tasks.

---

## When to Use

Use this guide when:

- a user cannot access the internet
- a user cannot access internal network resources
- a device is connected but shows no network access
- Wi-Fi, Ethernet, DNS, or IP configuration may be involved

---

## Steps

1. Confirm whether the issue affects one device or multiple devices.
2. Confirm whether the user is connected by Wi-Fi, Ethernet, or VPN.
3. Check whether the network adapter is enabled.
4. Verify IP configuration using `ipconfig`.
5. Check whether the device has a valid IP address, subnet mask, default gateway, and DNS server.
6. Test connectivity to the local gateway using `ping`.
7. Test external connectivity, for example with `ping 8.8.8.8`.
8. Test name resolution if DNS is suspected, for example with `ping google.com`.
9. Restart the browser, network adapter, or device if needed.
10. Escalate the issue if the problem appears to affect multiple users, network infrastructure, DNS, DHCP, or firewall rules.

---

## Result

These steps help identify whether the problem is local to one device, related to network configuration, or requires escalation.

---

## Notes

Always document the checks performed and the final result in the ticket.

Include relevant command results, affected device, connection type, and whether the issue affects one user or multiple users.

Do not change network settings unless the change is required and approved.
