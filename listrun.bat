@echo off
set i=0
pushd "%~dp0"
setlocal enabledelayedexpansion
for /f "tokens=1 delims=." %%a in ('dir /b /a-d %1') do (
	if not "%%a"=="listrun" (
		set /a i+=1
		call :print "%%a" 19 !i! 4
		if !i! equ 4 set i=0
	)
)
call :print " " 19 4 4
endlocal
popd
echo]
pause
exit /b

:print
rem %1 is str, %2 is width, %3 is index, %4 is line width
rem setlocal enabledelayedexpansion
set "whitespace= "
call :strlen %1 size
set /a size=%2 - %size%
set dat=!dat!%~1
for /l %%a in (1, 1, %size%) do set "dat=!dat! "
if %3 equ %4 (
	echo]%dat%
	set "dat="
)
rem endlocal
goto :EOF

:strlen
rem %1 is str, %2 is return size
setlocal enabledelayedexpansion
set "$=%~1#"
set len=&for %%a in (1024 512 256 128 64 32 16 8 4 2 1)do if !$:~%%a^,1!. NEQ . set/a len+=%%a&set $=!$:~%%a!
endlocal&set/a%2=%len%
goto :EOF