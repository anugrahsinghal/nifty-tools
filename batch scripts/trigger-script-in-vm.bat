@echo off
echo %time%
WMIC /node:%VM_ADDR% /USER:%VMUSER% /PASSWORD:%VMPASS% process call create "C:\Users\%username%\Desktop\chrome-dl.bat %1"
echo %time%