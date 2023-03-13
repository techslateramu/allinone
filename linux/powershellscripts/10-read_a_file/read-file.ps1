$file = Get-Content "C:\Users\HP\myfolder\allinone\linux\powershellscripts\10-read_a_file\README.md"

foreach ($line in $file) {
  # perform specific action on each line here
  Write-Host "Processing line: $line"
  # replace "Write-Host" with the action you want to perform
}
