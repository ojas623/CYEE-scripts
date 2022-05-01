@echo off
cd %~dp0
copy lgpo.exe C:\Windows\System32

lgpo.exe /g LGPO /v
pause