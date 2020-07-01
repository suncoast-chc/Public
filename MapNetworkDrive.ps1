## Map a temp drive to the file storage

$credential = Get-Credential
$psdrive = @{
    Name = "PSDrive"
    PSProvider = "FileSystem"
    Root = "\\fileserver\share"
    Credential = $credential
}
