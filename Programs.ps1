function Get-CSInfo {
param($computername)
$name = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName
$installdate = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object InstallDate


#property names with spaces need to be enclosed in quotes
$props = @{'Name' = $name
           'Install Date' = $installdate}

}

Get-CSInfo