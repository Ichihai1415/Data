@echo off
rem copilotくん作成のリネームbat(ファイル版)

setlocal enabledelayedexpansion

set "baseDir=D:\Ichihai1415\data\_github\Data\EQDB"
for /L %%y in (1919,1,2025) do (    for /L %%m in (1,1,12) do (
        if %%m LSS 10 (
            set "month=0%%m"
        ) else (
            set "month=%%m"
        )
        set "targetDir=%baseDir%\%%y\!month!"
        if exist "!targetDir!" (
            pushd "!targetDir!"
            for /L %%f in (1,1,9) do (
                if exist "%%f.csv" (
                    ren "%%f.csv" "0%%f.csv"
                )
            )
            popd
        )
    )
)