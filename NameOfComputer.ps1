function Display-computer-name {

$manufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
$model = (Get-CimInstance -ClassName Win32_ComputerSystem).model

return @{"Производитель" = $manufacturer; "Модель" = $model}

}

Display-computer-name