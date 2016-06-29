node {
   stage 'Stage JenkinsFile on Jenkins1'
   echo 'Hello World 1 on Jenkins1'
   echo 'PATH   ' + env.PATH
   
   echo '--->' + 'chemin local   ' + pwd()
   
   def wTmpPath = pwd(tmp: true)
   echo '--->' + 'chemin local - option tmp  ' + wTmpPath
   
   echo 'copy LaunchPowerShell.bat in @tmp dir '
   def wFileBatPath = pwd() + '@script\\LaunchPowerShell.bat'
   def wExist = fileExists file: wFileBatPath
   echo 'file ' + wFileBatPath + ' exist ' + wExist
   def wContent = readFile wFileBatPath
   echo '====== content  ' + wContent
   dir(path: wTmpPath)   {
        echo ('--> cur dir: ' + pwd() )
        writeFile file: 'testintmp.txt', text: 'coucou'
   }

   input message:'Continue ?'
      
   stage 'Launch Powershell'
   echo 'Avant copie'
   
   // writeFile file: wFileBatPath  
      echo 'Avant bat '
    // bat 'LaunchPowerShell.bat'
    
    
   stage 'Stage Build'
   build 'ZPowershell_1'


}