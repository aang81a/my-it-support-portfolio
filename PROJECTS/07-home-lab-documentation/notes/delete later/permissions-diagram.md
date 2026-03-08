# Permissions diagram

## Goal
Create a shared folder on the server and test group-based access from the client machine.

## What you need
- A working domain controller
- Existing users and groups in Active Directory
- A domain-joined client

## Steps
1. On `DC1`, create a folder named `SharedDocs`.
2. Share the folder on the network.
3. Set share and NTFS permissions.
4. Give the group `Helpdesk` modify access.
5. Give the group `SalesUsers` read access.
6. Log in on `CLIENT1` with a user from one of these groups.
7. Open the shared folder from the client.
8. Confirm whether the user has the correct level of access.

## Expected result
Users receive access according to their group membership.

## Notes
This step is useful for practicing access control and support scenarios related to file permissions.
