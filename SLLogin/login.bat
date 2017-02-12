@echo off
call dopy3env
@echo off
cd "%~dp0.."
type SLLogin\login.py|python -
pause