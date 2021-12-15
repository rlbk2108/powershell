

class Triangle {

    [double]$katet1
    [double]$katet2
    [double]$hypotenuse
    [double]$angle1
    [double]$angle2
    [double]$area
    [double]$perimeter

    Triangle ([double]$katet1, [double]$katet2) {
        
        $this.katet1 = $katet1
        $this.katet2 = $katet2
        $this.hypotenuse = [math]::Round(([math]::Sqrt(([math]::pow($katet1, 2) + [math]::pow($katet2, 2)))), 1)
        $this.angle1 = [math]::Round([math]::Tan($katet1/$katet2), 1)
        $this.angle2 = (90 - $this.angle1)
        $this.area = (($katet1 * $katet2)/2)
        $this.perimeter = ($katet1 + $katet2 + $this.hypotenuse)

    }

}

$a = read-host "Введи первый катет"
$b = read-host "Введи второй катет"
$mc1 = [Triangle]::new($a, $b)
$mc1




