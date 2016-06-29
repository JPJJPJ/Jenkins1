echo -------------------- 
echo ZPowershell__Sleep
Write-Error -Message "Error: Too many input values." -Category InvalidArgument
Start-sleep 2
get-process | out-file process.txt
echo --------------------
try{
  echo -------------------- 
  echo ZPowershell Start
  echo -------------------- 

    #get-process | out-file .\truc\process.txt
    get-process
    
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