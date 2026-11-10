# Active Directory Domain Services and DNS Deployment

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow) ![Focus](https://img.shields.io/badge/Focus-Active%20Directory-blue) ![Technology](https://img.shields.io/badge/Technology-DNS-0078D4)

## Objective

Install and configure Active Directory Domain Services (AD DS) and DNS on Windows Server 2025 for the isolated `AD-LAB` environment.

## Configuration

| Component | Specification |
|---|---|
| Domain Controller | `DC01` — Windows Server 2025 |
| Domain | `corp.techlog.test` |
| NetBIOS Name | `TECHLOG` |
| Internal Network | `AD-LAB` (`192.168.50.0/24`) |
| DC01 Internal IP | `192.168.50.10` |
| Windows 11 Client IP | `192.168.50.20` |
| DNS Server | `192.168.50.10` |

## Main Steps

### 1. Prepare Network Connectivity

Configured the internal network and static IPv4 addresses for `DC01` and `WIN11-CLIENT01`. Verified bidirectional connectivity using `ping` after enabling scoped ICMPv4 inbound firewall rules.

*Network setup and testing were completed in Phase 05.*

### 2. Install AD DS

Installed **Active Directory Domain Services** with the required management tools through Server Manager.

<img src="screenshots/83.png" alt="Select Active Directory Domain Services role" width="650">

<img src="screenshots/88-installation-succeeded-ad-ds.png" alt="AD DS role installation completed" width="650">

### 3. Create the Domain

Promoted `DC01` to a domain controller in the new `corp.techlog.test` forest. Enabled DNS and Global Catalog, configured the `TECHLOG` NetBIOS name, and retained default AD DS storage paths.

<img src="screenshots/90.png" alt="New forest configuration" width="650">

<img src="screenshots/91.png" alt="Domain controller options" width="650">

<img src="screenshots/93.png" alt="DNS delegation warning" width="650">

<img src="screenshots/95.png" alt="NetBIOS domain name" width="650">

<img src="screenshots/96.png" alt="AD DS database and SYSVOL paths" width="650">

<img src="screenshots/98.png" alt="Prerequisite checks" width="650">

### 4. Verify Domain Controller and DNS

Confirmed domain controller promotion, domain membership, and creation of the AD-integrated DNS zones.

<img src="screenshots/100.png" alt="Server Manager AD DS and DNS roles" width="650">

<img src="screenshots/101.png" alt="DC01 domain and network configuration" width="650">

<img src="screenshots/102.png" alt="AD-integrated DNS zones" width="650">

### 5. Troubleshoot Incorrect DNS Registration

Detected an unwanted NAT address (`10.0.2.15`) in DNS alongside the internal address (`192.168.50.10`). Disabled DNS registration on the NAT adapter, restricted DNS to the internal interface, disabled Netlogon DNS A-record registration, and removed incorrect records.

<img src="screenshots/103.png" alt="Incorrect NAT DNS registration" width="650">

<img src="screenshots/104.png" alt="DNS record inspection" width="650">

<img src="screenshots/109.png" alt="DNS lookup showing multiple addresses" width="650">

<img src="screenshots/111.png" alt="DNS registration troubleshooting" width="650">

<img src="screenshots/112.png" alt="DNS configuration correction" width="650">

<img src="screenshots/116.png" alt="Netlogon DNS registration correction" width="650">

### 6. Verify DNS Resolution

After restarting `DC01`, confirmed that the unwanted NAT address was absent and the domain controller resolved to its internal IP only.

<img src="screenshots/118.png" alt="Correct internal DNS A records" width="650">

```cmd
nslookup dc01.corp.techlog.test 192.168.50.10
```

<img src="screenshots/119.png" alt="Successful server-side DNS resolution" width="650">

## Result

AD DS and DNS installed, `DC01` promoted to domain controller, and server-side DNS resolution verified (`192.168.50.10`). Windows 11 domain join and full AD health validation remain to be completed.

