Write-Host "Delete all JPG Photos - Designed by Krashnik"
# Get-ChildItem .. -Filter *.jpg -Recurse | Remove-Item -WhatIf

Get-ChildItem .. -Recurse *.jpg | Remove-Item -force

Write-Host "All Photos Have Been Successfully Removed"
