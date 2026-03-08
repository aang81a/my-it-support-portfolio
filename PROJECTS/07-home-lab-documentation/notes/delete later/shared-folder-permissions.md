# Shared Folder Permissions

## Goal
Create and test group-based access to a shared folder in the lab environment.

## What you need
- A working domain controller
- Existing users and groups in Active Directory
- A domain-joined client machine

## Steps
1. On `DC1`, create a folder named `SharedDocs`.
2. Share the folder on the network.
3. Set share and NTFS permissions.
4. Give the group `Helpdesk` modify access.
5. Give the group `SalesUsers` read access.
6. Ensure other users do not have access if not assigned.
7. Log in on `CLIENT1` with a user from one of the groups.
8. Open the shared folder from the client machine.
9. Confirm whether the user has the correct level of access.

## Example access model
- `Helpdesk` → Modify
- `SalesUsers` → Read
- Other users → No access

## Expected result
Access to the shared folder matches the permissions assigned to each group.

## Notes
This task helps practice access control, permissions testing, and support documentation.
