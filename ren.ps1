Write-Host "Batch Photo renaming tool designed by Krashnik"
Get-ChildItem -Recurse *.jpg | rename-item -newname { $_.name -replace ' \((\d)\)','0$1' -replace ' \((\d\d)\)','$1'}
