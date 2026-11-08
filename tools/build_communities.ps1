$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$root = Split-Path -Parent $PSScriptRoot
$source = Join-Path $root 'content\valttheros_communities'
$mods = Join-Path $root 'minecraft\mods'
$target = Join-Path $mods 'valttheros_communities.jar'
$temp = Join-Path $mods ("valttheros_communities.build." + [Guid]::NewGuid().ToString('N') + '.zip')
if (!(Test-Path -LiteralPath $source)) { throw "No existe el contenido fuente: $source" }
$archive = [IO.Compression.ZipFile]::Open($temp, [IO.Compression.ZipArchiveMode]::Create)
try {
    foreach ($file in Get-ChildItem -LiteralPath $source -File -Recurse) {
        $relative = $file.FullName.Substring($source.Length).TrimStart('\', '/') -replace '\\', '/'
        $entry = $archive.CreateEntry($relative, [IO.Compression.CompressionLevel]::Optimal)
        $input = [IO.File]::OpenRead($file.FullName)
        $output = $entry.Open()
        try { $input.CopyTo($output) }
        finally { $output.Dispose(); $input.Dispose() }
    }
}
finally { $archive.Dispose() }
Move-Item -LiteralPath $temp -Destination $target -Force
Write-Host "Pack de comunidades actualizado: $target"