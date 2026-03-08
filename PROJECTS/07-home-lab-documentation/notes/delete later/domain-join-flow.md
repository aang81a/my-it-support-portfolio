# Domain Join Flow

## Goal
Join the client computer to the lab domain and test domain login.

## What you need
- `DC1` working as a domain controller
- `CLIENT1` installed and running
- The IP address of `DC1`

## Steps
1. Rename the client computer to `CLIENT1`.
2. Open the network settings on `CLIENT1`.
3. Set the DNS server of `CLIENT1` to the IP address of `DC1`.
4. Open the system settings for computer name and domain membership.
5. Choose the option to join a domain.
6. Enter the domain name `lab.local`.
7. Enter domain administrator credentials when prompted.
8. Restart the client computer.
9. Log in using a domain user account.

## Expected result
`CLIENT1` is joined to `lab.local` and accepts sign-in with a domain user.

## Notes
If the domain join fails, first check DNS settings. In this lab, correct DNS configuration is essential.
