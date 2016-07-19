echo 'LaunchPowerShell.bat Start - V2'

powershell -ExecutionPolicy RemoteSigned -file TestPowershell1.ps1
set code=%ERRORLEVEL%
rem powershell -file TestPowershell1.ps1

echo '------------------ code  ' + %code%
echo 'LaunchPowerShell.bat End'
exit /B %code%                
