class DateTime {

    [int]$year
    [string]$month
    [int]$day

}

$datetime = [DateTime]::new()
$datetime.year = 2002
$datetime.month = "October"
$datetime.day = 21

$datetime