#Get-ChildItem -Path E:\Tugas-tugas\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts -Name
$filenames = Get-ChildItem -Path $pwd -Name "*.java" | Select-Object -First 1
if ($filenames){
 Write-Host "Ada File Java di direktori" $pwd
 $confirmation = Read-Host "Rename file Java? (y/n)"
 if ($confirmation -eq 'y') {
    $newname = Read-Host "Masukan Nama Baru:"
    Rename-Item $pwd"\"$filenames $newname".java" 
    #Write-Host $pwd"\"$filenames $newname
 }
 
}
else {
 Write-Host "Tidak ada File Java di direktori" $pwd
}

Write-Host "Proses Selesai."