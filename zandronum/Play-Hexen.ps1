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
} elseif ($Server) {
    & $zandronum `
        -stdout `
        -host `
        '+sv_hostname' CodingDoom `
        -port 666 `
        -iwad hexen
} else {
    throw 'Invalid arguments'
}
