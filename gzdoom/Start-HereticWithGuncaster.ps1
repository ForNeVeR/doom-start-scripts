param (
    [switch] $Connect,
    [switch] $Server,
    [string] $ConfigFile = "$PSScriptRoot/../config.ps1",
    [string] $SaveGame,
    [string[]] $Files
)

$config = & $ConfigFile
$gzdoom = $config.gzdoom

& "$PSScriptRoot/Start-GZDoom.ps1" `
    -gzdoom $gzdoom `
    -IWAD 'heretic' `
    -Files 'Guncaster.pk3' `
    -Connect:$Connect `
    -Server:$Server `
    -SaveGame $SaveGame
