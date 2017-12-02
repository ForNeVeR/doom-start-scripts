param (
    [switch] $Play,
    [switch] $Connect,
    [switch] $Server,

    [string] $zandronum = "$PSScriptRoot/../zandronum.exe"
)

if ($Play) {
    & $zandronum `
        -stdout `
        -iwad hexen
} elseif ($Connect) {
    & $zandronum `
        -stdout `
        -iwad hexen `
        -connect 127.0.0.1:666
} elseif ($Serve) {
    & $zandronum `
        -stdout `
        -iwad hexen `
        -port 666
} else {
    throw 'Invalid arguments'
}
