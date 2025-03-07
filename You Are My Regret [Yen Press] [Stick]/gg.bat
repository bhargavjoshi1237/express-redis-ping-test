@echo off
setlocal enabledelayedexpansion

for %%F in (*) do (
    set "newname=%%F"
    set "newname=!newname:[=!"
    set "newname=!newname:]=!"

    if not "%%F"=="!newname!" ren "%%F" "!newname!"
)

echo Rename operation completed.
pause
