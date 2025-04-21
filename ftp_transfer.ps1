$ftp = "ftp://192.168.1.100/samplefile.txt"     # IP of FTP server (Workstation A)
$user = "blondel"
$pass = "password123"
$target = "C:\Users\Public\samplefile.txt"      # Destination path on Workstation B

$webclient = New-Object System.Net.WebClient
$webclient.Credentials = New-Object System.Net.NetworkCredential($user, $pass)
$webclient.DownloadFile($ftp, $target)
