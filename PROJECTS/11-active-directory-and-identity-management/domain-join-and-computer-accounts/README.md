# Windows 11 Domain Join and Computer Account Verification

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Active%20Directory%20%26%20Identity%20Management-purple)
![Environment](https://img.shields.io/badge/Environment-Windows%2011%20Pro%20%7C%20Windows%20Server%202025-blue)

---

## Objective

Join WIN11-CLIENT01 to the corp.techlog.test domain and verify domain membership, computer account registration in Active Directory, and successful domain authentication.

---

## Lab Environment

| Component | Configuration |
|---|---|
| Company | TechLog Solutions (simulated) |
| Hypervisor | Oracle VirtualBox 7.2.22 |
| Domain Controller | `DC01` — Windows Server 2025 Standard Evaluation |
| Client workstation | `WIN11-CLIENT01` — Windows 11 Pro |
| AD domain | `corp.techlog.test` |
| NetBIOS name | `TECHLOG` |
| Domain Controller IP | `192.168.50.10` |
| Windows 11 client IP | `192.168.50.20` |
| Internal network | `AD-LAB` — `192.168.50.0/24` |
| DNS server | `192.168.50.10` |

AD DS and DNS were previously deployed on `DC01`. The Windows 11 workstation was initially configured with a local administrator account and had not yet joined the domain.

---

## 1. Prerequisites and Network Verification

Before joining the domain, the following prerequisites were verified:

- `DC01` was running and available on the internal `AD-LAB` network.
- `WIN11-CLIENT01` had a static IPv4 address of `192.168.50.20/24`.
- The client's DNS configuration pointed to `192.168.50.10`.
- The Domain Controller was reachable from Windows 11.
- DNS resolution for `dc01.corp.techlog.test` returned `192.168.50.10`.

The client was configured to use its isolated internal network for domain communication, with its NAT adapter temporarily disabled during the successful domain-join procedure.

### Verification Commands

```cmd
ipconfig /all
ping 192.168.50.10
nslookup dc01.corp.techlog.test 192.168.50.10
```

**Result:** The Domain Controller responded successfully to ICMP requests, and the expected internal IP address was returned by DNS.

![Windows 11 network configuration, ping and DNS verification](screenshots/Screenshot%2001.png)

*Evidence 01 — Client IPv4 configuration, successful ping and Domain Controller name resolution.*

---

## 2. Join Windows 11 to Active Directory

The domain join was completed using Windows PowerShell with administrative privileges.

### Procedure

1. Open Windows PowerShell as Administrator on `WIN11-CLIENT01`.
2. Execute the `Add-Computer` command, specifying the Active Directory domain and domain administrator credentials.
3. Authenticate using the TechLog domain Administrator account when prompted.
4. Wait for PowerShell to complete the operation.
5. Restart Windows 11 to apply the domain-membership changes.

For a reproducible deployment, the PowerShell command is:

```powershell
Add-Computer -DomainName "corp.techlog.test" -Credential (Get-Credential) -Verbose
```

When prompted, enter the domain administrator account `TECHLOG\Administrator` and its password.

The completed operation returned:

```text
VERBOSE: Performing the operation "Join in domain 'corp.techlog.test'"
on target "WIN11-CLIENT01".

WARNING: The changes will take effect after you restart
the computer WIN11-CLIENT01.
```

**Result:** The domain join operation completed and Windows 11 was restarted successfully.

![Successful Windows 11 domain join using PowerShell](screenshots/Screenshot%2003a.png)

*Evidence 02 — Successful `Add-Computer` execution and restart requirement.*

> **Security:** Administrative credentials were entered interactively and are not included in the documentation.

---

## 3. Verify Domain Membership

After restarting the Windows 11 client, domain membership was verified through:

**Settings → System → About**

The system displayed:

| Property | Verified value |
|---|---|
| Device name | `WIN11-CLIENT01` |
| Full device name | `WIN11-CLIENT01.corp.techlog.test` |
| Windows edition | Windows 11 Pro |

**Result:** The workstation was successfully registered in the TechLog Solutions domain.

![Windows 11 Pro computer name and Active Directory domain membership](screenshots/Screenshot%2004.png)

*Evidence 03 — Windows 11 Pro and the domain-qualified computer name.*

---

## 4. Verify the Computer Account in Active Directory

On `DC01`:

1. Open **Server Manager → Tools → Active Directory Users and Computers**.
2. Expand `corp.techlog.test`.
3. Select the default **Computers** container.
4. Locate the computer account `WIN11-CLIENT01`.

**Result:** Active Directory contained the expected computer object, confirming that the domain-join operation created the corresponding directory account.

![Windows 11 computer account in Active Directory](screenshots/Screenshot%2005.png)

*Evidence 04 — `WIN11-CLIENT01` visible in the Active Directory Computers container.*

The computer account was subsequently moved into the managed `TechLog-Solutions → Computers` OU during the OU, user and group management exercise.

---

## 5. Verify Domain Authentication

The client was used to test authentication with the TechLog domain Administrator account.

After signing in to `WIN11-CLIENT01`, the following commands were executed:

```cmd
whoami
echo %USERDNSDOMAIN%
```

### Verified Output

```text
techlog\administrator
CORP.TECHLOG.TEST
```

**Result:** Authentication using a domain account succeeded, and Windows reported the expected Active Directory domain.

![Successful TechLog domain administrator authentication](screenshots/Screenshot%2006b.png)

*Evidence 05 — Successful domain sign-in and domain-context verification.*

---

## 6. Results

| Verification | Result |
|---|---|
| Client-to-server network connectivity | Passed |
| Domain Controller DNS resolution | Passed |
| Windows 11 domain join | Completed |
| Computer domain membership | Verified |
| Computer account in Active Directory | Verified |
| Domain Administrator sign-in | Passed |

---


## Final Result: 

`WIN11-CLIENT01` was successfully joined to `corp.techlog.test`, its computer account was verified in Active Directory, and domain authentication was tested successfully.



