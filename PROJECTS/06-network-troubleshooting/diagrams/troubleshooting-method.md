## Troubleshooting Method

This flowchart represents the structured approach used in this network troubleshooting case.

```mermaid
flowchart TB
A[User reports network issue] --> B[Gather information]
B --> C[Check current IP configuration]
C --> D{Static or incorrect IP settings?}
D -->|Yes| E[Restore DHCP / automatic configuration]
D -->|No| F[Continue connectivity checks]
E --> G[Release and renew IP configuration]
F --> G
G --> H[Test gateway connectivity]
H --> I[Test external IP connectivity]
I --> J[Test DNS / name resolution]
J --> K[Compare network behaviour]
K --> L[Document findings and resolution]
```

### Key Steps Explained

- **Gather information**: collect the affected device, connection type, symptoms, and recent changes.
- **Check current IP configuration**: use `ipconfig` to review IP address, subnet mask, gateway, and DNS settings.
- **Restore DHCP / automatic configuration**: remove incorrect static IPv4 or DNS settings when needed.
- **Release and renew IP configuration**: use `ipconfig /release` and `ipconfig /renew` to request a fresh DHCP configuration.
- **Test gateway connectivity**: use `ping` to check whether the device can reach the configured default gateway.
- **Test external IP connectivity**: use `ping 8.8.8.8` to check whether external network access works.
- **Test DNS / name resolution**: use `ping google.com` to check whether DNS/name resolution works.
- **Compare network behaviour**: compare Ethernet, home Wi-Fi, and mobile hotspot results.
- **Document findings and resolution**: record the issue, steps taken, test results, and final outcome.
