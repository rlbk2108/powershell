class get_process {

[string]$name
[string]$status

    get_process([string]$name, [string]$status){
    
        $this.name = (Get-Service).Name
        $this.status = (Get-Service "s*" -Select Status)

    }

}

$process