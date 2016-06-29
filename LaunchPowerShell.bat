echo LaunchPowerShell.bat Start
powershell -ExecutionPolicy RemoteSigned -file TestPowershell1.ps1
rem powershell -file TestPowershell1.ps1
set code=%errorlevel%
echo '------------------ code  ' + %code%
echo LaunchPowerShell.bat End
                