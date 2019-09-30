cd C:\Users\MatthewHackney\Pictures\batch
setlocal enabledelayedexpansion
for /r C:\Users\MatthewHackney\Pictures\batch\ %%a in (*.jpg) do ECHO (
set f=%%a
set f=!f:^(=!
set f=!f:^)=!
set f=!f: =!
ren "%%a" "!f!"
)