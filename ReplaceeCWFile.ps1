Set-ExecutionPolicy -ExecutionPolicy Unrestricted
$ScriptFromGitHub = Invoke-WebRequest https://raw.githubusercontent.com/bwindham-suncoast/Public/master/ReplaceeCWFile.ps1
Invoke-Expression $($ScriptFromGitHub.Content)
