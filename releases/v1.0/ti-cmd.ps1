$ConfirmPreference = "None"
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Write-Host "Pending for Admin Access..."
    Start-Process powershell -ArgumentList "-NoProfile -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

if (Get-Module -ListAvailable -Name NtObjectManager) {
} 
else {
    Write-Host "Downloading Modules..."
    Install-Module -Name NtObjectManager -Force
}

Write-Host "Running New Console..."
Set-ExecutionPolicy -ExecutionPolicy bypass -Scope CurrentUser -Force
Start-Service -Name TrustedInstaller
$parent = Get-NtProcess -ServiceName TrustedInstaller
$proc = New-Win32Process cmd.exe -CreationFlags NewConsole -ParentProcess $parent
$ConfirmPreference = "High"