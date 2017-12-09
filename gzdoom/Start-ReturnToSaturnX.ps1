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
    -IWAD 'doom2' `
    -Files @(
        'btsx_e1.wad'
        'Guncaster.pk3'
        "DoomKrakken's Monster Randomizer (Base) v4.pk3"
        'DKMR Guncaster Patch (v4).pk3'
     ) `
    -Connect:$Connect `
    -Server:$Server `
    -SaveGame $SaveGame
