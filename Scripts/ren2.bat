cd C:\Photobatch\PhotoBatch\
setlocal enabledelayedexpansion
for /R %x in (*.jpg) do ren "%x" a????.*
for /r C:\Photobatch\PhotoBatch\ %%a in (*.jpg) do (
set f=%%a
set f=!f:^(=!
set f=!f:^)=!
set f=!f: =!
ren "%%a" "!f!"
)