$ConfirmPreference = "None"
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Write-Host "--> Pending for Admin Access..."
    Start-Process powershell -ArgumentList "-NoProfile -File `"$PSCommandPath`"" -Verb RunAs
    exit
}
    Write-Host "--> Checking Requirements..."
if ((Get-PackageProvider -ListAvailable -Name NuGet)) {
if ((Get-PackageProvider -Name NuGet).version -lt 2.8.5.201) {
    Write-Host "--> Upgrading Providers..."
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Confirm:$False -Force | Out-Null
}
} else {
    Write-Host "--> Installing Providers..."
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Confirm:$False -Force | Out-Null
}


if (Get-Module -ListAvailable -Name NtObjectManager) {
} 
else {
    Write-Host "--> Installing Modules..."
    Install-Module -Name NtObjectManager -Force
}

Write-Host "--> Running New Console..."
Set-ExecutionPolicy -ExecutionPolicy bypass -Scope CurrentUser -Force
Start-Service -Name TrustedInstaller
$parent = Get-NtProcess -ServiceName TrustedInstaller
$proc = New-Win32Process cmd.exe -CreationFlags NewConsole -ParentProcess $parent
$ConfirmPreference = "High"