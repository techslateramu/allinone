param (
    [int]$number
)

function IsPrime($num) {
    if ($num -lt 2) {
        return $false
    }
    for ($i = 2; $i -le [math]::sqrt($num); $i++) {
        if ($num % $i -eq 0) {
            return $false
        }
    }
    return $true
}

if (IsPrime($number)) {
    Write-Output "$number is a prime number."
} else {
    Write-Output "$number is not a prime number."
}
