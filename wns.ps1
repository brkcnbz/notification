$Miliseconds=900000000
$Text="Herkese Merhaba"
$Title="Başlık | Test"

Add-Type -AssemblyName System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info 
$balloon.BalloonTipText = "$Text"
$balloon.BalloonTipTitle = "$Title" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip($Miliseconds)

