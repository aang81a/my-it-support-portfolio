# ==========================================================
# Script: client-diagnostic.ps1 / collect-support-info.ps1
# Version: 1.0.0 (2026-05-08)
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







VERSION 2:  updated smart pathing to handle Desktop redirection and automatic file saving

# ==========================================================
# Script: client-diagnostic.ps1 / collect-support-info.ps1
# Version: 1.0.0 (2026-05-11)
# Purpose: L1 Support Diagnostic Utility
# ==========================================================

Write-Host "Gathering System Information... Please wait." -ForegroundColor Cyan

# --- STEP 1: GATHER THE ANTIVIRUS DATA ---
# Queries the WMI SecurityCenter2 namespace for registered AV products
$AVData = Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct
$AVNames = $AVData.displayName -join ", "

# If the database is empty, default to Windows Defender
if (-not $AVNames) { $AVNames = "Windows Defender" }


# --- STEP 2: BUILD THE REPORT TEXT ---
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

# Display report in the console for the technician
Write-Host $ResultsText -ForegroundColor Green


# --- STEP 3: FORCED DESKTOP SAVING ---

# 1. Explicitly fetch the Shell Desktop path (The most reliable method for .exe)
$Shell = New-Object -ComObject Shell.Application
$DesktopPath = $Shell.NameSpace(0x10).Self.Path 

# 2. Safety Fallback: If Shell fails, use the .NET method we tried before
if (-not $DesktopPath) { 
    $DesktopPath = [Environment]::GetFolderPath("Desktop")
}

# 3. Last Resort: If everything fails, use the TEMP folder
if (-not $DesktopPath) { $DesktopPath = $env:TEMP }

# 4. Create filename with timestamp
$Timestamp = Get-Date -Format "HHmm"
$FileName = "TechSupport_Report_$Timestamp.txt"
$FinalPath = Join-Path $DesktopPath $FileName

# 5. Save the file
$ResultsText | Out-String | Out-File -FilePath $FinalPath -Force -Encoding utf8

Write-Host "Diagnostic complete. Report forced to Desktop: $FinalPath" -ForegroundColor Yellow


# Pause ensures the user can read the console before the window closes (especially important for .exe)
Pause






VERSION 3: "bulletproof" way to ensure the script never crashes

# ==========================================================
# Script: client-diagnostic.ps1 / collect-support-info.ps1
# Version: 1.1.0 (2026-05-11)
# Purpose: L1 Support Diagnostic Utility
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

