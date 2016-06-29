echo LaunchPowerShell.bat Start
powershell -file TestPowershell1.ps1
set code=%errorlevel%
echo '------------------ code  ' + code
echo LaunchPowerShell.bat End
exit 10