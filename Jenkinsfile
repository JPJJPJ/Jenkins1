node {
   stage 'Stage JenkinsFile on Jenkins1'
   echo 'Hello World 1 on Jenkins1'
   stage 'Stage 2'
   echo 'PATH    ' + env.PATH
   echo 'chemin local   ' + pwd()
   
   stage 'Stage Build'
   build 'ZPowershell_1'
   
   stage 'Launch Powershell'
   def wFileBatPath = pwd() + '@script\\LaunchPowerShell.bat'
   echo  wFileBatPath
   echo 'Avant copie'
   writeFile file: wFileBatPath  
      echo 'Avant bat '
    bat 'LaunchPowerShell.bat'

}