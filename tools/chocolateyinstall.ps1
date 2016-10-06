$packageName = 'grayboxsimulator'
$url = 'http://gray-box.net/files/gray_simulator.zip'
$url64 = 'http://gray-box.net/files/gray_simulator.zip'
$zipPath = $env:temp + "\\gray.zip"
$unzipPath = $env:temp + "\\gray"
$unzipFile = $unzipPath + "\\gbopcsim18.msi"

Get-ChocolateyWebFile $packageName $zipPath $url $url64
Get-ChocolateyUnzip $zipPath $unzipPath
Install-ChocolateyInstallPackage $packageName "msi" "/quiet" $unzipFile