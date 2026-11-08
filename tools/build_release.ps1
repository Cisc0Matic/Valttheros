$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$version = '1.1.5'
$dist = Join-Path $root "dist\Valttheros-$version"
$zip = Join-Path $root "dist\Valttheros-$version.zip"
if (Test-Path -LiteralPath $dist) { Remove-Item -LiteralPath $dist -Recurse -Force }
if (Test-Path -LiteralPath $zip) { Remove-Item -LiteralPath $zip -Force }
New-Item -ItemType Directory -Path $dist | Out-Null
New-Item -ItemType Directory -Path (Join-Path $dist 'minecraft') | Out-Null
Copy-Item -LiteralPath (Join-Path $root 'mmc-pack.json') -Destination $dist
Copy-Item -LiteralPath (Join-Path $root 'icon.png') -Destination $dist
Copy-Item -LiteralPath (Join-Path $root 'LEEME_PACK.txt') -Destination $dist
$cfg = @"
[General]
ConfigVersion=1.3
ExportName=Valttheros
ExportVersion=1.1.5
ExportSummary=Aventura RPG de fantasia argentina con diez comunidades, misiones ramificadas y asentamientos generados en el mundo.
ExportOptionalFiles=true
InstanceType=OneSix
MaxMemAlloc=7168
MinMemAlloc=4096
name=Valttheros
notes=Modpack RPG argentino de fantasia
"@
$cfg | Set-Content -LiteralPath (Join-Path $dist 'instance.cfg') -Encoding utf8
$mc = Join-Path $root 'minecraft'
foreach ($dir in @('mods','config','resourcepacks','shaderpacks')) {
  $src = Join-Path $mc $dir
  if (Test-Path -LiteralPath $src) { New-Item -ItemType Directory -Force -Path (Join-Path $dist "minecraft\$dir") | Out-Null }
}
Get-ChildItem (Join-Path $mc 'mods') -File -Filter '*.jar' | Where-Object { $_.Name -notmatch '\.(bak|disabled)$' -and $_.Name -notmatch 'ValttherosContent' } | Copy-Item -Destination (Join-Path $dist 'minecraft\mods')
$configSource = Join-Path $mc 'config'
$configTarget = Join-Path $dist 'minecraft\config'
Get-ChildItem $configSource -Recurse -File | Where-Object {
  $_.Name -notmatch '\.(bak|old)$' -and
  $_.FullName -notmatch '[\\/](xaero|xaeros_minimap)[\\/]'
} | ForEach-Object {
  $relative = $_.FullName.Substring($configSource.Length).TrimStart('\', '/')
  $target = Join-Path $configTarget $relative
  New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target) | Out-Null
  Copy-Item -LiteralPath $_.FullName -Destination $target -Force
}
$wp = Join-Path $mc 'config\xaeros_minimap\valttheros-waypoints.json'
if (Test-Path -LiteralPath $wp) { New-Item -ItemType Directory -Force -Path (Join-Path $dist 'minecraft\config\xaeros_minimap') | Out-Null; Copy-Item -LiteralPath $wp -Destination (Join-Path $dist 'minecraft\config\xaeros_minimap') }
foreach ($name in @('goety_spanish','irons_spanish','valttheros_dialogues','valttheros_splash','valttheros_title')) {
  $src = Join-Path $mc "resourcepacks\$name"
  if (Test-Path -LiteralPath $src) { Copy-Item -LiteralPath $src -Destination (Join-Path $dist 'minecraft\resourcepacks') -Recurse -Force }
}
if (Test-Path -LiteralPath (Join-Path $mc 'shaderpacks')) { Copy-Item -LiteralPath (Join-Path $mc 'shaderpacks\*') -Destination (Join-Path $dist 'minecraft\shaderpacks') -Recurse -Force }
$defaultOptions = @'
resourcePacks:["vanilla","file/valttheros_dialogues"]
incompatibleResourcePacks:[]
'@
[IO.File]::WriteAllText((Join-Path $dist 'minecraft\options.txt'), $defaultOptions, [Text.UTF8Encoding]::new($false))
Compress-Archive -Path (Join-Path $dist '*') -DestinationPath $zip -CompressionLevel Optimal
Write-Host "Paquete listo: $zip"




