cd C:\PhotoBatch\PhotoBatch\
setlocal enabledelayedexpansion
for %%a in (*.jpg) do (
set f=%%a
set f=!f:^(=!
set f=!f:^)=!
ren "%%a" "!f!"
)