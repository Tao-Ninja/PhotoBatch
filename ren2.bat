cd C:\PhotoBatch\PhotoBatch\
setlocal enabledelayedexpansion
for /r C:\PhotoBatch\PhotoBatch\ %%a in (*.jpg) do ECHO (
set f=%%a
set f=!f:^(=!
set f=!f:^)=!
set f=!f: =!
ren "%%a" "!f!"
)