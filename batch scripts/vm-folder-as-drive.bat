@echo off

:Start
timeout /t 10 /nobreak >NUL
if exist N:\NUL goto :END
REM 99.98.97.96\c$\folder
net use N: \\%PATH_TO_VM_DIR% /USER:%VMUSER% %VMPASS% /PERSISTENT:YES
if ERRORLEVEL 1 echo %PATH_TO_VM_DIR% drive not connected && goto Start
:END
echo done