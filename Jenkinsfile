node {
   stage 'Stage JenkinsFile on Jenkins1'
   echo 'Hello World 1 on Jenkins1'
   echo 'PATH    ' + env.PATH
   echo 'chemin local   ' + pwd()
   echo 'chemin local - option tmp  ' + pwd(tmp: true)
   
   stage 'Stage Build'
   build 'ZPowershell_1'
   
   stage 'Launch Powershell'
   def wFileBatPath = pwd() + '@script\\LaunchPowerShell.bat'
   echo  wFileBatPath
   echo 'Avant copie'
   echo fileExists file: wFileBatPath
   // writeFile file: wFileBatPath  
      echo 'Avant bat '
    // bat 'LaunchPowerShell.bat'

}