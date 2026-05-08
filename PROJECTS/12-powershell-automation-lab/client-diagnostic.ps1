# ==========================================================
# Script: client-diagnostic.ps1
# Purpose: L1 Support Diagnostic Utility
# ==========================================================

Write-Host "Gathering System Information... Please wait." -ForegroundColor Cyan

# --- STEP 1: GATHER THE CLEAN ANTIVIRUS DATA ---
$AVData = Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct
$AVNames = $AVData.displayName -join ", "

# If the database is empty, it defaults to Windows Defender
if (-not $AVNames) { $AVNames = "Windows Defender" }


# --- STEP 2: BUILD THE REPORT TEXT ---
# (Notice we use $AVNames at the bottom of this list)
$ResultsText = @"
IT SUPPORT DIAGNOSTIC REPORT
---------------------------
Date/Time:      $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
Computer Name:  $env:COMPUTERNAME
Current User:   $env:USERNAME
IP Address:     $((Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike "*Loopback*" }).IPAddress | Select-Object -First 1)
Serial Number:  $((Get-CimInstance Win32_Bios).SerialNumber)
Windows Ver:    $((Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName)
Last Reboot:    $((Get-CimInstance Win32_OperatingSystem).LastBootUpTime)
Antivirus:      $AVNames
---------------------------
"@

# --- STEP 3: OUTPUT AND SAVING ---
Write-Host $ResultsText -ForegroundColor Green

# This is the "Zero-Fail" way to find the folder, even inside an .exe
$CurrentDir = [System.AppDomain]::CurrentDomain.BaseDirectory
if (-not $CurrentDir) { $CurrentDir = $PSScriptRoot }

$FilePath = Join-Path $CurrentDir "TechSupport_Report.txt"

# Save the text
$ResultsText | Out-String | Out-File -FilePath $FilePath -Force -Encoding utf8

Write-Host "Diagnostic complete. Info saved to: $FilePath" -ForegroundColor Yellow
Pause
