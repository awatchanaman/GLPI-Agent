$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = 'https://github.com/glpi-project/glpi-agent/releases/download/1.4/GLPI-Agent-1.4-x86.msi'
  checksum      = '987C4874EAE6291D9ADCF50B70509B57FA5DF2C205624B1CF0975F8A3E59C02E'
  checksumType  = 'sha256' 
  url64         = 'https://github.com/glpi-project/glpi-agent/releases/download/1.4/GLPI-Agent-1.4-x64.msi'
  checksum64    = '95C3E417BF7FCC7674B033C1ABB89E108F7677BC01A2628EC5A00A6BC289A7E5'
  checksumType64= 'sha256' 
  silentArgs    = "/quiet"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs