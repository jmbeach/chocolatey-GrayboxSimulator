$packageName = 'grayboxsimulator'
$url = 'http://gray-box.net/files/gray_simulator.zip'
$url64 = 'http://gray-box.net/files/gray_simulator.zip'
$checksum = '877C6F01F855843F4CC4B282116F969F71B544F674B37463AF4FFE765ACEE8C6'
$checksumType = 'sha256'
$checksum64 = '877C6F01F855843F4CC4B282116F969F71B544F674B37463AF4FFE765ACEE8C6'
$checksumType64 = 'sha256'
$zipPath = $env:temp + "\\gray.zip"
$unzipPath = $env:temp + "\\gray"
$unzipFile = $unzipPath + "\\gbopcsim18.msi"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $zipPath -Url $url -Url64bit $url64 -Checksum $checksum -ChecksumType $checksumType -Checksum64 $checksum64 -ChecksumType64 $checksumType64
Get-ChocolateyUnzip $zipPath $unzipPath
Install-ChocolateyInstallPackage $packageName "msi" "/quiet" $unzipFile
