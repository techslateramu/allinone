$dir = "C:\Users\HP\myfolder\allinone"
$fil = "linux"

if (Test-Path "$dir\$file") {
    Write-Host "File exists in directory"
} else {
    Write-Host "File does not exist in directory"
}
