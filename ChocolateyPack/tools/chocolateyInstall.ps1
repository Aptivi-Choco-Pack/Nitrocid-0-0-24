$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "KS"
$url        = "https://github.com/Aptivi/NitrocidKS/releases/download/v0.0.24.31-beta/0.0.24.31-bin.zip"
$shacheck   = "2e3707bf5a76369943299737ed2e62f7628553bd074e08f2d0822d1e4ec597da"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"
Write-Output "<+> Configuration will be automatically generated on startup."

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
