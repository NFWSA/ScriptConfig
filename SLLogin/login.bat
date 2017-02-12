@echo off
call dopy3env
@echo off
cd "%~dp0.."
type login\login.py|python -
pause