node {
   stage 'Stage JenkinsFile on Jenkins1'
   echo 'Hello World 1 on Jenkins1'
   echo 'PATH   ' + env.PATH
   echo '--->' + 'chemin local   ' + pwd()
   def wTmpPath = pwd(tmp: true)
   echo '--->' + 'chemin local - option tmp  ' + wTmpPath
      
   stage 'Launch Powershell'
   def wFileBatPath = pwd() + '@script\\LaunchPowerShell.bat'
   echo  '--->' + wFileBatPath
   echo 'Avant copie'
   def wExist = fileExists file: wFileBatPath
   echo 'file ' + wFileBatPath + ' exist ' + wExist
   dir path: wTmpPath   {
      writeFile file: wFileBatPath  
   }
   
   // writeFile file: wFileBatPath  
      echo 'Avant bat '
    // bat 'LaunchPowerShell.bat'
    
    
   stage 'Stage Build'
   build 'ZPowershell_1'


}