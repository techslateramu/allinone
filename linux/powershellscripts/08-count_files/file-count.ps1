$directoryPath = "C:\Users\HP\myfolder\allinone\linux\powershellscripts\08-count_files"
$fileCount = (Get-ChildItem -Path $directoryPath -File).Count
Write-Host "There are $fileCount files in $directoryPath"

