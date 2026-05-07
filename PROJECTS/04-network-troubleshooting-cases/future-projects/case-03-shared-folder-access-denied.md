# Case 03 – Shared Folder Access Denied

## Problem
A user reports that they cannot access a shared network folder.

## Environment
- Windows 10 / Windows 11 client
- Windows Server (File Server)
- Domain environment (Active Directory)
- Shared network folder (e.g., \\fileserver\shared)

## Symptoms
- "Access denied" message when opening the shared folder
- User can see the folder but cannot open it
- Other users may have access without issues

---

## Diagnosis Steps

1. Verified network connectivity:
   ping fileserver

→ Result: Successful (network connectivity confirmed)

2. Verified shared path:
   \\fileserver\shared

→ Folder is visible but not accessible

3. Checked user account:
   - Confirmed user is logged into the domain
   - Verified correct username

4. Checked share permissions:
   - Accessed folder properties on server
   - Reviewed "Sharing" permissions

5. Checked NTFS permissions:
   - Reviewed Security tab
   - Verified user/group permissions

6. Checked group membership:
   - Verified if user is part of correct AD group

---

## Root Cause
The user did not have the required permissions to access the shared folder.

Either:
- Missing share permission, or
- Missing NTFS permission, or
- Not part of correct Active Directory group

---

## Solution

1. Added user to correct AD group
   or
2. Updated folder permissions:
   - Share permissions (e.g., Read/Modify)
   - NTFS permissions (Security tab)

3. Applied changes

4. User logged off and logged back in (or used `gpupdate` if needed)

---

## Result

- User can access shared folder
- Files can be opened and modified (based on permission level)
- No further access errors

---

## Screenshots
(To be added later)

- Access denied error
- Share permissions settings
- NTFS permissions settings
- Group membership (Active Directory)
- Successful access after fix

---

## Lessons Learned

- Both Share and NTFS permissions must be checked
- Effective permission = combination of both
- Group-based permissions are preferred over individual users
- Always verify group membership in AD

---

## Skills Demonstrated

- Permission troubleshooting (Share + NTFS)
- Active Directory basics (users, groups)
- Network resource access troubleshooting
- Root cause analysis
- Documentation and structured problem solving
