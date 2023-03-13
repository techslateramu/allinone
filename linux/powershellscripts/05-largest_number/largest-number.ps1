$array = @(3, 9, 2, 6, 1, 8, 4, 7, 5)  # sample array of numbers

$largest = $array[0]  # assume the first number is the largest

foreach ($num in $array) {
    if ($num -gt $largest) {  # if we find a larger number, update $largest
        $largest = $num
    }
}

Write-Host "The largest number in the array is $largest"
