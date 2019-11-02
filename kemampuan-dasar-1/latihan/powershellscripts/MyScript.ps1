#Write-Host "Hello, World!"
Add-Content -Path 'E:\Tugas-tugas\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\MyScript.ps1' -Value "[ZoneTransfer]`nZoneId=3" -Stream 'Zone.Identifier'
Clear-Content -Path 'E:\Tugas-tugas\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\MyScript.ps1' -Stream 'Zone.Identifier'

Write-Output 'Custom PowerShell profile in effect!'
if (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{Write-Output 'Running as Administrator!'}
else
{Write-Output 'Running Limited!'}
Pause
