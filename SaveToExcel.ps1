$ExcelObj = New-Object -comobject Excel.Application
$ExcelObj.visible=$true
$ExcelObj.ScreenUpdating = $true
$EWB = $ExcelObj.Workbooks.Add()
$EWS = $EWB.Worksheets.Item(1) 
$EWS.Name = 'list'
$EWS.Cells.Item(1,1) = 'Status'
$EWS.Cells.Item(1,2) = 'Name' 
$EWB.Saveas('C:\Users\User\Desktop\Книга1.xlsx') 

$srv = Get-Service | Sort-Object -Property @{ Expression = 'Status'; Descending = $true }

$j = 2
foreach($arr in $srv)
{
   #Если процесс запущен то зеленый иначе красный
   if($arr.Status -eq 4){
    $EWS.Cells.Item($j,1) = 'Запущен'
    $color = 10
   }else{
    $EWS.Cells.Item($j,1) = 'Остановлен'
    $color = 3
   }
   
   
   $EWS.Cells.Item($j,2) = $arr.Name
   
   $EWS.Cells.Item($j,1).Font.Bold = $true
   $EWS.Cells.Item($j,1).Font.ColorIndex = $color

   $j++
}