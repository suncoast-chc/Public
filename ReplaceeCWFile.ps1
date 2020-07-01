## tests if the path C:\Program Files (x86)\eClinicalworks\ exists ##
## if the path exists it will copy DentalDevices.xml to that path ##
## If it doesnt exist, it will write thst the path doesnt exist ##

## variables ##
$path = "C:\Program Files (x86)\eClinicalWorks"
$a = test-path -Path $path
$networkShare = "\\nas\playground\IT\ERCActiveX.ocx"
$destination = "C:\Program Files (x86)\eClinicalWorks\ERCActiveX.ocx"

## test the path - if true ##
if ($a -eq "True") {
copy-item $networkShare -Destination $destination
}

## test the path - if false ##
else {
write-host "$path does not exist on $env:computername"
}
