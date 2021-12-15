class Car {

    [int]$vin
    [string]$model
    [double]$eng_

    Car([int]$vin, [string]$model, [double]$eng__)

    {
    
        $this.vin = 123
        $this.model = "Tesla Model 3"
        $this.eng_ = 2.5

    }

}

$cr = [Car]::new()
$cr.eng_=3.0
$cr 
$a = read-host "Enter the vin number"
$b = read-host "Enter the Model"
$b = read-host "Enter the Engine volume"
$cr1 = [Car]::new($a, $b, $c)
$cr1