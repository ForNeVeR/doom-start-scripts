param (
    [string] $gzdoom,
    [switch] $Connect,
    [switch] $Server,
    [string] $IWAD,
    [string[]] $Files,
    [string] $SaveGame
)

$arguments = @('-iwad', $IWAD)

if ($Server) {
    $arguments += @('-host', 2, '-port', 666)
} elseif ($Connect) {
    $arguments += @('-join', 127.0.0.1, '-port', 666)
}

if ($SaveGame) {
    $arguments += @('-loadgame', $SaveGame)
}

if ($Files) {
    $arguments += @('-file', $Files)
}

& $gzdoom @arguments
