function Invoke-GitAlias {
    param(
        [string]$Alias,
        [string]$Args = ""
    )

    if ($GitAliases.ContainsKey($Alias)) {
        $Command = "git $($GitAliases[$Alias]) $Args"
        Invoke-Expression $Command
    } else {
        Write-Output "Error: Unknown alias '$Alias'."
    }
}

$GitAliases = @{
    "gst"   = "status"
    "ga"    = "add"
    "gaa"   = "add *"
    "gapa"  = "add -p"
    "gcmsg" = "commit -m"
    "gps"   = "push"
    "gpl"   = "pull"
    "gco"   = "checkout"
    "gcb"   = "checkout -b"
    "gcl"   = "clone"
    "gcp"   = "cherry-pick"
    "gcpa"  = "cherry-pick --abort"
    "gcpc"  = "cherry-pick --continue"
    "gb"    = "branch"
    "gd"    = "diff"
    "glg"   = "log --oneline --graph --decorate --all"
    "gf"    = "fetch"
    "gfa"   = "fetch --all --tags --prune"
    "gh"    = "help"
    "gmg"   = "merge"
    "gma"   = "merge --abort"
    "gmc"   = "merge --continue"
    "gms"   = "merge --squash"
    "gr"    = "rebase"
    "gra"   = "rebase --abort"
    "grc"   = "rebase --continue"
    "grs"   = "reset"
    "grsh"  = "reset --hard"
    "grst"  = "restore"
    "grsts" = "restore --staged"
    "grev"  = "revert"
    "grm"   = "rm"
    "gs"    = "stash"
    "gsp"   = "stash pop"
    "gsl"   = "stash list"
    "gsc"   = "stash clear"
    "gtag"  = "tag"
}

foreach ($alias in $GitAliases.Keys) {
    New-Item -Path "Function:\$alias" -Value {
        param($Args)
        Invoke-GitAlias $MyInvocation.MyCommand.Name $Args
    } -Force | Out-Null
}

Export-ModuleMember -Function ($GitAliases.Keys + "Invoke-GitAlias")
