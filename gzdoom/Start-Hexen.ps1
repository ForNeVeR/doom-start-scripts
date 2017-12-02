param (
    [switch] $Connect,
    [switch] $Server,
    [switch] $Standalone,
    [string] $ConfigFile = "$PSScriptRoot/../config.ps1"
)

$config = & $ConfigFile
$gzdoom = $config.gzdoom

if ($Standalone) {
    & $gzdoom -iwad hexen
} elseif ($Server) {
    & $gzdoom -iwad hexen -host 2 -port 666
} elseif ($Connect) {
    & $gzdoom -iwad hexen -join 127.0.0.1 -port 666
} else {
    throw 'Invalid arguments'
}
