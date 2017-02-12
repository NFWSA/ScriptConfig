@echo off
set editor=start notepad
set "pathStr=D:\Profile\ConfigSync\InfoConfig"
set "relaPath=..\ConfigSync\InfoConfig"
if "%~1"=="h" (
    echo]
    echo]
    echo]Usage:
    echo]   info h
    echo]       help infomation.
    echo]
    echo]   info
    echo]   info n
    echo]       list all info files.
    echo]
    echo]   info c ^<info file name^>
    echo]       create new info file.
    echo]
    echo]   info n ^<info file name^>
    echo]       start info file with notepad++.
    echo]
    echo]   info ^<info file name^>
    echo]       start info file with windows notepad.
    echo]
    echo]
    pause
    exit /b
)
if "%~1"=="n" (
    set editor=start npp.lnk
    shift /1
)
if "%~1"=="c" (
    set "editor=cd. >"
    shift /1
    echo]
    echo]
    call echo]Really to create file "Info%%~1.txt" ?
    echo]   Use ^^C to break this operation.
    pause
)
if "%~1"=="" (
    if "%editor%"=="cd. >" (
        echo]
        echo]
        echo]Error: filename cannot be null string.
        pause
    ) else (
        echo]
        echo]
        call listrun.bat %relaPath%\
    )
    exit /b
)
if not "%editor%"=="cd. >" (
    if not exist "%pathStr%\Info%~1.txt" (
        echo]
        echo]Error: info file not found!
        pause
        exit /b
    )
) else (
    if exist "%pathStr%\Info%~1.txt" (
        echo]
        echo]Error: info file already existed!
        pause
        exit /b
    )
)
%editor% "%pathStr%\Info%~1.txt"
@echo on