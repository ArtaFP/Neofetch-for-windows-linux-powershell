$OutputEncoding = [System.Text.Encoding]::UTF8
$line = "████████████░░████████████"
$dotline="░░░░░░░░░░░░░░░░░░░░░░░░░░"
$frameLineTop="�
$space33=" " * 33
$space41=" " * 41
Write-Host $space33 $username@$hostname -ForegroundColor Green
Write-Host $space31"$frameLineTop " -ForegroundColor Green
Write-Host $line -NoNewline  -ForegroundColor cyan   
Write-Host "      OS: " -NoNewline -ForegroundColor Yellow
Write-Host $osName
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      Version: " -NoNewline -ForegroundColor Yellow
Write-Host $osVersion
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      huh: " -NoNewline -ForegroundColor Yellow
Write-Host $systemModel
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      what: " -NoNewline -ForegroundColor Yellow
Write-Output "$cpuName ($cpuCount)@$cpuSpeed MHz"
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      GPU: " -NoNewline -ForegroundColor Yellow
Write-Host $gpu
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host -NoNewline "      Uptime: " -ForegroundColor Yellow
Write-Host $uptimeFormatted "hrs"
Write-Host $dotline -NoNewline  -ForegroundColor cyan
Write-Host -NoNewline "      Shell: " -ForegroundColor Yellow
Write-Host $shell
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      Terminal: " -NoNewline -ForegroundColor Yellow
Write-Host $terminal
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host -NoNewline "      Resolution: " -ForegroundColor Yellow
Write-Host $res
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      Disk free: " -NoNewline -ForegroundColor Yellow
Write-Host "$freeSpace GB/$totalSpace GB"
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      Memory: " -NoNewline -ForegroundColor Yellow
Write-host $ramUsage "GB/"$ramTotal "GB" -NoNewline 
if($ramPercentage -ge 91){Write-host "($ramPercentage%)" -ForegroundColor red}
else{ Write-host "($ramPercentage%)"}
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      Type: " -NoNewline -ForegroundColor Yellow
Write-Host $systemType
Write-Host $line -NoNewline  -ForegroundColor cyan
Write-Host "      Battery: " -NoNewline -ForegroundColor Yellow
Write-Host "$percentage" -NoNewline 
Write-Host "%  " -NoNewline 
if ($status -eq 2 ){Write-Host ("█" * $numblock) -NoNewline -ForegroundColor green}
else{if ($numblock -ge 7 ){Write-Host ("█" * $numblock) -NoNewline -ForegroundColor green}
if ($numblock -ge 3 -and $numblock -lt 7 ){Write-Host ("█" * $numblock) -NoNewline -ForegroundColor yellow}
if ($numblock -lt 3 ){Write-Host ("█" * $numblock) -NoNewline -ForegroundColor red}}
Write-Host ("░" * $spce)-NoNewline
if($status -eq 2){Write-host "⚡" -NoNewline} 


Write-Host `n$space31"$frameLineBot" -ForegroundColor Green

Write-HOst $space41 -NoNewline
foreach ($color in $colors) {
    Write-Host " " -ForegroundColor $color -NoNewline 
}
Write-Host
