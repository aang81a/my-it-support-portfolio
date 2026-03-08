# Active Directory Structure

## Goal
Set up a simple Active Directory structure for practicing user and computer management.

## What you need
- A working Windows Server virtual machine
- Administrator access to the server

## Steps
1. Rename the server to `DC1`.
2. Set a static IP address on the server.
3. Install the Active Directory Domain Services role.
4. Promote the server to a domain controller.
5. Create the domain `lab.local`.
6. Open Active Directory Users and Computers.
7. Create the following organizational units:
   - Users
   - Groups
   - Computers
8. Create sample users:
   - j.smith
   - m.brown
9. Create sample groups:
   - Helpdesk
   - SalesUsers

## Expected result
You have a working Active Directory lab with a domain, organizational units, users, and groups.

## Notes
Keep the structure simple. The goal is to practice common IT support tasks, not to build a large enterprise environment.
