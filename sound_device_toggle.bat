@echo off

:start
for /f "delims=" %%a in (num.txt) do set compnumber=%%a
set /a foo=%compnumber%%%2
echo %foo%
if %foo% equ 0 goto :evens1
if %foo% neq 0 goto :odds1
GOTO:eof

:odds1
nircmd.exe setdefaultsounddevice "Speakers"
nircmd.exe setdefaultsounddevice "Speakers" 2
nircmd.exe setdefaultsounddevice "Speakers" 1
set /a newnum=%compnumber%+1
@echo "%newnum%"> num.txt
GOTO:eof

:evens1
nircmd.exe setdefaultsounddevice "Realtek HD Audio 2nd output"
nircmd.exe setdefaultsounddevice "Realtek HD Audio 2nd output" 2
nircmd.exe setdefaultsounddevice "Realtek HD Audio 2nd output" 1
set /a newnum=%compnumber%+1
@echo "%newnum%"> num.txt
GOTO:eof