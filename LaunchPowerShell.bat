echo LaunchPowerShell.bat Start
rem powershell -ExecutionPolicy RemoteSigned -file TestPowershell1.ps1
powershell -file TestPowershell1.ps1
set code=%errorlevel%
echo '------------------ code  ' + %code%
echo LaunchPowerShell.bat End
                