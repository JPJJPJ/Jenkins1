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
   echo 'file bat ' + wFileBatPath + ' exist ' + wExist
   def wContentBat = readFile wFileBatPath
   //echo '====== content  ' + wContentBat

   echo 'copy TestPowershell1.ps1 in @tmp dir '
   wFileBatPath = pwd() + '@script\\TestPowershell1.ps1'
   wExist = fileExists file: wFileBatPath
   echo 'file ps1 ' + wFileBatPath + ' exist ' + wExist
   def wContentPs1 = readFile wFileBatPath
   
   dir(path: wTmpPath)   {
        echo ('--> cur dir: ' + pwd() )
        writeFile file: 'LaunchPowerShell.bat', text: wContentBat
        writeFile file: 'TestPowershell1.ps1', text: wContentPs1
   }

   input message:'Continue ?'
      
   stage 'Launch Powershell'
   dir(path: wTmpPath)   {
        echo 'Avant lancement bat '
        bat 'LaunchPowerShell.bat
   }
    
   input message:'Continue ?'
    
   stage 'Stage Build'
   build 'ZPowershell_1'


}