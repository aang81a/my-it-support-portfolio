# ==========================================================
# Script: client-diagnostic.ps1
# Purpose: L1 Support Diagnostic Utility
# ==========================================================

Clear-Host
$DiagnosticPath = "$env:USERPROFILE\Documents\TechSupport_Report.txt"

Write-Host "Gathering System Information..." -ForegroundColor Cyan

# Create a clean text array
$ReportData = @(
    "------------------------------------------------",
    "IT SUPPORT DIAGNOSTIC REPORT",
    "------------------------------------------------",
    "Date:           $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')",
    "Computer:       $env:COMPUTERNAME",
    "User:           $env:USERNAME",
    "Serial:         $((Get-CimInstance Win32_Bios).SerialNumber)",
    "------------------------------------------------"
)

# Write the file using a simple stream
$ReportData | Out-File -FilePath $DiagnosticPath -Force -Encoding utf8

Write-Host "Wait... finalizing report..." -ForegroundColor Gray
Start-Sleep -Seconds 2  # Gives Windows time to save

if (Test-Path $DiagnosticPath) {
    Write-Host "`nSUCCESS! Opening report now..." -ForegroundColor Green
    # Instead of Word, let's open it in NOTEPAD (standard for IT)
    Start-Process notepad.exe -ArgumentList $DiagnosticPath
}

Pause
