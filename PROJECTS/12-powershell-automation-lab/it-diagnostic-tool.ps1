# powershell
==========================================================
# Script: it-diagnostic.ps1
# Version: 1.1.0 (2026-mm-dd)
# Purpose: IT Diagnostic Tool
# ==========================================================

Write-Host "Gathering System Information... Please wait." -ForegroundColor Cyan

# --- STEP 1: GATHER THE ANTIVIRUS DATA ---
$AVData = Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct
$AVNames = $AVData.displayName -join ", "
if (-not $AVNames) { $AVNames = "Windows Defender" }

# --- STEP 2: BUILD THE REPORT TEXT ---
$ResultsText = @"
IT SUPPORT DIAGNOSTIC REPORT
---------------------------
Date/Time:      $(Get-Date -Format "yyyy-MM-dd_HH-mm-ss")
Computer Name:  $env:COMPUTERNAME
Current User:   $env:USERNAME
IP Address:     $((Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike "*Loopback*" }).IPAddress | Select-Object -First 1)
Serial Number:  $((Get-CimInstance Win32_Bios).SerialNumber)
Windows Ver:    $((Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName)
Last Reboot:    $((Get-CimInstance Win32_OperatingSystem).LastBootUpTime)
Antivirus:      $AVNames
---------------------------
"@

Write-Host $ResultsText -ForegroundColor Green

# --- STEP 3: RELIABLE LOCAL OUTPUT ---
# This ensures the report is always saved right next to the .exe
$TargetDir = [System.AppDomain]::CurrentDomain.BaseDirectory
if (-not $TargetDir) { $TargetDir = $PSScriptRoot }

$Timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$FileName = "TechSupport_Report_$Timestamp.txt"
$FinalPath = Join-Path $TargetDir $FileName

$ResultsText | Out-String | Out-File -FilePath $FinalPath -Force -Encoding utf8

Write-Host "Diagnostic complete. Report saved in the same folder: $FileName" -ForegroundColor Yellow
Pause
