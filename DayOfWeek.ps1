Class DateTime {

    [int]$day
    [int]$month
    [int]$year


    DateTime ([int]$day, [int]$month, [int]$year){
    
    $this.day = $day
    $this.month = $month
    $this.year = $year

    }

}

$a = read-host "Day - "
$b = read-host "Month - "
$c = read-host "Year - "
$m = (get-date $a/$b/$c).DayOfWeek
$m