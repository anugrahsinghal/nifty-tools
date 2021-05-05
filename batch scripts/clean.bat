@echo off
echo "deleteing temp files"
cd C:\Users\%username%\AppData\Local\Temp
rm -rv *

echo "delete logs in downloads"
cd C:\Users\%username%\Downloads
rm -v *.log

pause