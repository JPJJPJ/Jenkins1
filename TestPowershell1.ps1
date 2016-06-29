echo -------------------- 
echo ZPowershell__Sleep
#Write-Error -Message "Test - Manual Error message"
Start-sleep 2
echo --------------------
try{
  echo -------------------- 
  echo ZPowershell Start  
  echo -------------------- 

  get-process | out-file process.txt
#  get-process | out-file .\truc\process.txt        # raise error
        
  echo -------------------- 
  echo ZPowershell End
  echo -------------------- 
}catch{
  echo -------------------- 
  echo '---> ZPowershell catch'
  echo --------------------
  #Write-Error -Message "Error in catch" 
	echo $_.Exception.Message
	echo 'avant appel exit 10 dans catch'
  exit 10   
}