## Troubleshooting Method

This flowchart represents the structured approach used in this network troubleshooting case.

```mermaid
flowchart LR
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

- **Gather information**: collect user details, environment, and symptoms  
- **Check basics**: verify connectivity, power, configuration  
- **Identify root cause**: isolate the actual issue  
- **Apply solution**: implement the fix  
- **Test solution**: confirm the issue is resolved  
- **Document case**: record the solution for future reference  
