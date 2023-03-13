$string = Read-Host "Enter a string to check if it's a palindrome"
$length = $string.Length
$isPalindrome = $true

for ($i = 0; $i -lt $length / 2; $i++) {
    if ($string[$i] -ne $string[$length - $i - 1]) {
        $isPalindrome = $false
        break
    }
}

if ($isPalindrome) {
    Write-Host "$string is a palindrome"
} else {
    Write-Host "$string is not a palindrome"
}
