echo -------------------- 
echo ZPowershell__Sleep
#Write-Error -Message "Test - Manual Error message"
Start-sleep 2
echo --------------------
try{
  echo -------------------- 
  echo ZPowershell Start
  echo -------------------- 

    get-process | out-file .\truc\process.txt
        
  echo -------------------- 
  echo ZPowershell End
  echo -------------------- 
}catch{
  echo -------------------- 
  echo ZPowershell catch
  echo --------------------
  Write-Error -Message "Error in catch" 
	echo $_.Exception.Message
	exit 10   
}