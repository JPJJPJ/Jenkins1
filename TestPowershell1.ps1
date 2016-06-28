echo -------------------- 
echo ZPowershell__Sleep
Start-sleep 2
get-process | out-file process.txt
echo --------------------