#Variables creating local folder and download .ico file
#$LocalIconFolderPath = "C:\ETOIcon"
#$SourceIcon = "https://secure.etosoftware.com/images_login/Logo_ETO.ico"
#$DestinationIcon = "C:\ETOIcon\eto.ico"

#Step 1 - Create a folder to place the URL icon
#New-Item $LocalIconFolderPath -Type Directory

#Step 2 - Download a ICO file from a website into previous created folder
#curl $SourceIcon -o $DestinationIcon

#Step 3 - Add the custom URL shortcut to your Desktop with custom icon
$Shell = New-Object -ComObject WScript.Shell
$Shortcut = $Shell.CreateShortcut("$Home\OneDrive - CARACOLE, INC\Desktop\ETO.lnk") # Change name of .lnk file
$Shortcut.TargetPath = "https://secure.etosoftware.com/NewLogin.aspx" # Replace with the path to your file or website
#$source.IconLocation = ”C:\ETOIcon\eto.ico”
$Shortcut.Save()

