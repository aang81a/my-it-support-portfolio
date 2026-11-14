
# Active Directory Domain Services and DNS Deployment

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Focus](https://img.shields.io/badge/Focus-Active%20Directory-blue)
![Technology](https://img.shields.io/badge/Technology-DNS-0078D4)

---

## Objective

Deploy Active Directory Domain Services (AD DS) and DNS on Windows Server 2025 to establish the domain infrastructure for the isolated TechLog Solutions IT Support Home Lab.

Configure `DC01` as the first Domain Controller in a new forest, verify DNS registration, and troubleshoot incorrect DNS records caused by its two network adapters.

---

## Configuration

| Component | Specification |
|---|---|
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Domain Controller | `DC01` |
| Server OS | Windows Server 2025 Standard Evaluation (Desktop Experience) |
| Domain | `corp.techlog.test` |
| NetBIOS name | `TECHLOG` |
| Forest functional level | Windows Server 2025 |
| Domain functional level | Windows Server 2025 |
| DNS Server | `DC01` |
| Global Catalog | Enabled |
| Internal Network | `AD-LAB` (`192.168.50.0/24`) |
| DC01 internal IPv4 | `192.168.50.10` |
| Windows 11 client | `WIN11-CLIENT01` |
| Windows 11 client IPv4 | `192.168.50.20` |
| Internal DNS address | `192.168.50.10` |

This is an isolated training environment with a single Domain Controller, not a production infrastructure design.

---

## Deployment

### 1. Prepare Network Connectivity

The internal VirtualBox network was configured and tested during Phase 05.

Both virtual machines use two network adapters:

| VM | Adapter 1 | Adapter 2 — Internal Network |
|---|---|---|
| `DC01` | NAT, DHCP | `AD-LAB`, `192.168.50.10/24` |
| `WIN11-CLIENT01` | NAT, DHCP | `AD-LAB`, `192.168.50.20/24` |

The internal adapters have no default gateway. The Windows 11 client uses `192.168.50.10` as its internal DNS server.

Bidirectional connectivity was verified using `ping`, with **4 replies and 0% packet loss** after configuring the appropriate ICMPv4 firewall rules.

The server's pre-AD DS baseline snapshot had already been created. Windows Server security updates were subsequently installed before domain promotion; the original snapshot does not represent that updated state.

[Virtual Network Configuration — Phase 05](../virtual-network-configuration/README.md)

---

### 2. Install Active Directory Domain Services

1. Opened **Server Manager → Manage → Add Roles and Features**.
2. Selected **Role-based or feature-based installation**.
3. Selected the local server `DC01`.
4. Enabled **Active Directory Domain Services**.
5. Accepted the required administration tools, including Group Policy Management and AD DS management features.
6. Reviewed the installation selections and started the installation.
7. Confirmed that the installation succeeded and that additional configuration was required.

**AD DS role selection:**

<img src="screenshots/83.png" alt="Active Directory Domain Services selected in Server Manager" width="650">

**Successful installation:**

<img src="screenshots/88-installation-succeeded-ad-ds.png" alt="AD DS role installed successfully; domain controller promotion required" width="650">

**Verification:** AD DS was installed successfully. Installing the role alone did not yet make `DC01` a Domain Controller.

---

### 3. Create the Active Directory Domain

Selected **Promote this server to a domain controller** from Server Manager.

#### 3.1 Create a New Forest

Selected **Add a new forest** and entered the root domain name:

`corp.techlog.test`

<img src="screenshots/90.png" alt="Active Directory new forest configuration" width="650">

#### 3.2 Configure Domain Controller Options

Selected the following configuration:

| Setting | Value |
|---|---|
| Forest functional level | Windows Server 2025 |
| Domain functional level | Windows Server 2025 |
| DNS Server | Enabled |
| Global Catalog | Enabled |
| Read-only Domain Controller | Disabled |
| DSRM password | Configured privately |

The Directory Services Restore Mode (DSRM) password was not included in the public documentation.

<img src="screenshots/91.png" alt="Domain Controller options, functional levels, DNS and Global Catalog" width="650">

#### 3.3 Review DNS Delegation Warning

Windows displayed a warning that DNS delegation could not be created because no authoritative parent DNS zone was available.

This was expected for the isolated new forest. No external parent-zone delegation was required for the lab.

<img src="screenshots/93.png" alt="DNS delegation warning during domain controller promotion" width="650">

#### 3.4 Configure NetBIOS Name

Manually entered the NetBIOS domain name:

`TECHLOG`

<img src="screenshots/95.png" alt="NetBIOS domain name TECHLOG" width="650">

#### 3.5 Configure AD DS Database and SYSVOL Paths

Retained the default paths:

| Component | Path |
|---|---|
| Database | `C:\WINDOWS\NTDS` |
| Log files | `C:\WINDOWS\NTDS` |
| SYSVOL | `C:\WINDOWS\SYSVOL` |

<img src="screenshots/96.png" alt="AD DS database, log files and SYSVOL storage paths" width="650">

#### 3.6 Verify Prerequisites and Complete Promotion

The prerequisite check reported:

**All prerequisite checks passed successfully.**

Two nonblocking warnings were reviewed:

- The NAT adapter used DHCP, although the dedicated internal adapter had a static IP.
- DNS delegation could not be created because no parent DNS delegation existed.

After reviewing the warnings, the installation continued.

<img src="screenshots/98.png" alt="AD DS prerequisite checks completed successfully with warnings" width="650">

`DC01` restarted automatically after promotion.

**Verification:** Signed in successfully using `TECHLOG\Administrator`.

---

### 4. Verify Domain Controller and DNS

#### 4.1 Verify Server Roles

After restarting, **Server Manager** displayed the installed **AD DS** and **DNS** roles.

<img src="screenshots/100.png" alt="Server Manager showing Active Directory Domain Services and DNS" width="650">

#### 4.2 Verify Domain Membership

Opened **Server Manager → Local Server** and confirmed:

- Computer name: `DC01`
- Domain: `corp.techlog.test`
- Internal IPv4 address: `192.168.50.10`
- Domain firewall profile: enabled

<img src="screenshots/101.png" alt="DC01 Local Server properties and domain membership" width="650">

#### 4.3 Verify DNS Zones

Opened **Server Manager → Tools → DNS → DC01 → Forward Lookup Zones**.

Confirmed the Active Directory-integrated zones:

- `corp.techlog.test`
- `_msdcs.corp.techlog.test`

<img src="screenshots/102.png" alt="Active Directory-integrated DNS forward lookup zones" width="650">

**Result:** The Domain Controller was promoted successfully, and the required DNS zones were present.

---

### 5. Troubleshoot Incorrect DNS Registration

#### 5.1 Identify the Problem

During DNS verification, the Domain Controller registered two IPv4 addresses:

| Address | Interface | Result |
|---|---|---|
| `192.168.50.10` | Internal Network `AD-LAB` | Correct |
| `10.0.2.15` | VirtualBox NAT | Unwanted in AD DNS |

The DNS records included the unwanted NAT address alongside the correct internal address.

<img src="screenshots/103.png" alt="DNS records showing the internal IP and unwanted NAT IP" width="650">

A DNS query from the Windows 11 client also returned both addresses.

<img src="screenshots/109.png" alt="DNS lookup returning both internal and NAT addresses" width="650">

**Problem:** The isolated client could receive the NAT address when resolving the Domain Controller, potentially causing domain join or authentication failures.

This was an incorrect multi-address DNS response, not a complete DNS service failure.

#### 5.2 Disable DNS Registration on the NAT Adapter

Opened the Windows network connection settings on `DC01`:

1. Ran `ncpa.cpl`.
2. Opened **Ethernet** — the NAT adapter, not `Ethernet 2`.
3. Selected **Internet Protocol Version 4 (TCP/IPv4) → Properties → Advanced → DNS**.
4. Cleared **Register this connection's addresses in DNS**.
5. Retained the NAT adapter's DHCP configuration.

<img src="screenshots/104.png" alt="NAT adapter DNS registration disabled" width="650">

This prevents ordinary adapter-based registration of the NAT address but does not necessarily stop Netlogon from registering domain-level DNS records.

#### 5.3 Restrict DNS Server Listening Interfaces

Opened **DNS Manager → DC01 → Properties → Interfaces**.

Changed the setting from **All IP addresses** to **Only the following IP addresses**.

Selected only:

`192.168.50.10`

<img src="screenshots/111.png" alt="DNS Server configured to listen on the internal IP only" width="650">

**Verification:** DNS Server was configured to listen on the internal lab interface.

However, this setting controls where DNS accepts queries. It does not independently control every DNS record-registration mechanism.

#### 5.4 Investigate Recurring DNS Records

After removing the incorrect Host (A) records, the unwanted `10.0.2.15` domain-level record appeared again.

<img src="screenshots/112.png" alt="Incorrect NAT Host A record remaining after initial DNS corrections" width="650">

This showed that manually deleting the DNS record was not sufficient.

The remaining registration mechanism was investigated through the Windows **Netlogon** configuration.

#### 5.5 Correct Netlogon A-Record Registration

Opened Registry Editor on `DC01`.

Navigated to:

`HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters`

Created or configured the following registry value:

```text
Name:  RegisterDnsARecords
Type:  REG_DWORD
Value: 0
```

<img src="screenshots/116.png" alt="Netlogon RegisterDnsARecords registry value configured to 0" width="650">

**Purpose:** Disable automatic Netlogon registration of Host (A) records that was contributing to the unwanted NAT address appearing in DNS.

**Important:** This is a targeted workaround for the isolated, dual-adapter training environment, not a general Domain Controller configuration recommendation.

Disabling Netlogon A-record registration can also affect useful domain locator records. The correct domain-level A records must therefore be maintained and checked. DC Locator SRV records and related Active Directory services still require validation.

---

### 6. Correct DNS Records and Verify Resolution

#### 6.1 Remove Incorrect Records

Removed the remaining unwanted Host (A) record for `10.0.2.15`.

Retained the correct internal records pointing to:

`192.168.50.10`

Restarted `DC01` and signed in as `TECHLOG\Administrator`.

#### 6.2 Verify DNS Records After Restart

Opened DNS Manager again and checked the `corp.techlog.test` forward lookup zone.

Confirmed that the displayed Host (A) records used the correct internal IPv4 address and that the unwanted NAT record had not returned.

<img src="screenshots/118.png" alt="DNS Host A records after restart showing the correct internal IP" width="650">

#### 6.3 Verify DNS Name Resolution

Executed the following command on `DC01`:

```cmd
nslookup dc01.corp.techlog.test 192.168.50.10
```

**Observed result:**

```text
Name:    dc01.corp.techlog.test
Address: 192.168.50.10
```

The unwanted `10.0.2.15` address was absent.

<img src="screenshots/119.png" alt="Successful DNS lookup resolving DC01 to 192.168.50.10 only" width="650">

**Verification:** Server-side forward DNS resolution succeeded after the corrective changes and restart.

The `Server: Unknown` label displayed by `nslookup` does not indicate that this forward lookup failed. It is consistent with the absence of a corresponding reverse/PTR record.

---

## Verification and Result

| Check | Observed result |
|---|---|
| AD DS installation | Passed |
| Domain Controller promotion | Passed |
| Domain creation | `corp.techlog.test` |
| NetBIOS name | `TECHLOG` |
| DNS Server role | Installed |
| Global Catalog | Enabled |
| AD-integrated DNS zones | Verified |
| Domain Controller login | `TECHLOG\Administrator` successful |
| Internal DNS address | `192.168.50.10` |
| Incorrect NAT registration | Corrected in observed post-restart checks |
| Server-side DNS resolution | Passed |
| Windows 11 domain join | Pending |
| Client DNS retest after final correction | Not yet documented |
| Comprehensive AD health checks | Pending |

**Result:** Active Directory Domain Services and DNS were successfully deployed. `DC01` was promoted to the Domain Controller for `corp.techlog.test`.

A DNS registration issue involving the VirtualBox NAT adapter was diagnosed and corrected. After restarting the server, DNS Manager showed the expected internal Host (A) records, and `nslookup` resolved `dc01.corp.techlog.test` to `192.168.50.10` only.

**The deployment is operational for the checks performed, but complete Active Directory validation remains pending.**

---

## Troubleshooting Skills Demonstrated

- Windows Server role installation and Domain Controller promotion.
- AD DS forest and DNS configuration.
- Static IP addressing in an isolated virtual network.
- Identifying incorrect DNS Host (A) records.
- Distinguishing NIC DNS registration from DNS Server listening interfaces.
- Investigating recurring Netlogon DNS registration.
- Applying a targeted registry correction.
- Verifying changes after restarting Windows Server.
- Using `nslookup` to confirm correct DNS resolution.

**Troubleshooting method:** Identify the issue → investigate the source → implement a correction → restart → verify the result.

---

## Next Steps

- [ ] Create a working Active Directory baseline snapshot.
- [ ] Validate essential DC Locator, DNS SRV and SYSVOL functionality.
- [ ] Join `WIN11-CLIENT01` to `corp.techlog.test`.
- [ ] Verify domain membership and domain-user authentication.
- [ ] Create the initial Active Directory OU, user and group structure.
- [ ] Configure initial permissions and Group Policy settings.

These tasks will complete and extend the working lab environment. Practical IT Support scenarios will be documented separately.

---

## Related Documentation

- [Oracle VirtualBox Installation](../virtualbox-installation/README.md)
- [Windows 11 Pro VM Deployment](../windows-11-pro-installation/README.md)
- [Windows Server 2025 VM Deployment](../windows-server-2025/README.md)
- [Virtual Network Configuration](../virtual-network-configuration/README.md)
