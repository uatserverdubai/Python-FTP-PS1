$ftp = "ftp://192.168.1.10/samplefile.txt"  # Replace with sender's IP and file name
$user = "blondel"
$pass = "password123"
$target = "C:\Users\Public\samplefile.txt"

$webclient = New-Object System.Net.WebClient
$webclient.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
$webclient.DownloadFile($ftp, $target)

Write-Host "File downloaded to $target"

#Replace 192.168.1.10 with the IP address of the machine running ftp_server.py