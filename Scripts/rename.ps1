Param($newname='a') #Must be the first statement in your script

Write-Host "Batch Photo Renaming Tool - Designed by Krashnik"

Get-ChildItem .. -Recurse *.jpg |ForEach-Object {
    $fullname = $newname+'{0}.jpg' -f $n++
    $Destination = Join-Path -Path $_.Directory.FullName -ChildPath $fullname
    Move-Item -Path $_.FullName -Destination $Destination -Force
}
Get-ChildItem .. -Recurse *.jpg | Rename-item -newname { $_.name -replace ' \((\d)\)','0$1' -replace ' \((\d\d)\)','$1'}


Write-Host "All Photos Have Been Successfully Renamed"

