$number = Read-Host "Enter a number to calculate its factorial"

if ($number -lt 0) {
    Write-Host "Factorial is not defined for negative numbers"
}
elseif ($number -eq 0) {
    Write-Host "Factorial of 0 is 1"
}
else {
    $factorial = 1
    for ($i = 1; $i -le $number; $i++) {
        $factorial *= $i
    }
    Write-Host "Factorial of $number is $factorial"
}
