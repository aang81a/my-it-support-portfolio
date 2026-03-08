1. Lab environment overview

This is the most important one.

Show:

DC1 = Windows Server / Domain Controller

CLIENT1 = Windows client

both connected on the same lab network

domain name, for example lab.local

Example structure:

1.

[ DC1 - Windows Server ]
   - Active Directory
   - DNS
   - Shared Folder
          |
          | lab network
          |
[ CLIENT1 - Windows 10/11 ]
   - Domain joined
   - User login testing

2. 

lab.local
│
├── OU=Users
│   ├── j.smith
│   └── m.brown
│
├── OU=Groups
│   ├── Helpdesk
│   └── SalesUsers
│
└── OU=Computers
    └── CLIENT1
