@echo off
rem copilotくん作成のリネームbat

setlocal enabledelayedexpansion

set "baseDir=D:\Ichihai1415\data\_github\Data\EQDB"

for /L %%y in (1919,1,2025) do (
    set "yearDir=%baseDir%\%%y"
    if exist "!yearDir!" (
        pushd "!yearDir!"
        for /L %%m in (1,1,9) do (
            set "month=%%m"
            set "newMonth=0%%m"
            if exist "!month!" (
                ren "!month!" "!newMonth!"
            )
        )
        popd
    )
)