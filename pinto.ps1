function pinTo([string]$app, [string]$action) {
    if (Test-Path $app) {
        if (!(Test-Path "$($PSScriptRoot)\syspin.exe")) {
            Invoke-WebRequest "http://www.technosys.net/download.aspx?file=syspin.exe" -OutFile "$($PSScriptRoot)\syspin.exe"
        }
        if ($action -eq "pinTask") {
            $num = 5386
        }
        elseif ($action -eq "unpinTask") {
            $num = 5387
        }
        elseif ($action -eq "pinStart") {
            $num = 51201
        }
        elseif ($action -eq "unpinStart") {
            $num = 51394
        }
        else {
            Write-Host "Invalid action"
            exit 0
        }
        . "$($PSScriptRoot)\syspin.exe" $app $num
        Remove-Item "$($PSScriptRoot)\syspin.exe" -Force
    }
    else {
        Write-Host "Application not found, make sure the path is corrct and the file is a .exe or .lnk"
    }
}
