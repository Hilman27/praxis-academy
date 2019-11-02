#Get-ChildItem -Path E:\Tugas-tugas\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts -Name
$filenames = Get-ChildItem -Path $pwd -Name "*.java"
if ($filenames){
 Write-Host "Ada File Java di direktori" $pwd
}
else {
 Write-Host "Tidak ada File Java di direktori" $pwd
}

