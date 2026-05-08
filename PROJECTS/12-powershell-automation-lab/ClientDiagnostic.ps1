```markdown
 ==========================================================
# Script: ClientDiagnostic.ps1
# Purpose: Gathers system info for L1 Support Triage
==========================================================

Write-Host "Gathering System Information... Please wait." -ForegroundColor Cyan

$Results = [PSCustomObject]@{
    "Computer Name" = $env:COMPUTERNAME
    "Current User"  = $env:USERNAME
    "IP Address"    = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike "*Loopback*" }).IPAddress[0]
    "Serial Number" = (Get-CimInstance Win32_Bios).SerialNumber
    "Windows Ver"   = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName
    "Last Reboot"   = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
}

# Output to console
$Results | Out-String | Write-Host -ForegroundColor Green

# Optional: Save to a text file on the Desktop for the user to send
$Results | Out-File -FilePath "$env:USERPROFILE\Desktop\TechSupport_Info.txt"

Write-Host "Diagnostic complete. Info saved to your Desktop." -ForegroundColor Yellow
Pause
```
