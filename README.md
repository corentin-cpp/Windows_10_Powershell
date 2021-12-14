                                                                 ________      ___    ___      ________  _______   ________  ________  ________  ________  ________      
                                                                |\   __  \    |\  \  /  /|    |\   __  \|\  ___ \ |\   ___ \|\   ____\|\   __  \|\   ____\|\   ____\     
                                                                \ \  \|\ /_   \ \  \/  / /    \ \  \|\  \ \   __/|\ \  \_|\ \ \  \___|\ \  \|\  \ \  \___|\ \  \___|_    
                                                                 \ \   __  \   \ \    / /      \ \   _  _\ \  \_|/_\ \  \ \\ \ \  \    \ \  \\\  \ \  \    \ \_____  \   
                                                                  \ \  \|\  \   \/  /  /        \ \  \\  \\ \  \_|\ \ \  \_\\ \ \  \____\ \  \\\  \ \  \____\|____|\  \  
                                                                   \ \_______\__/  / /           \ \__\\ _\\ \_______\ \_______\ \_______\ \_______\ \_______\____\_\  \ 
                                                                    \|_______|\___/ /             \|__|\|__|\|_______|\|_______|\|_______|\|_______|\|_______|\_________\
                                                                             \|___|/                                                                         \|_________|
                                                                                                         
                                                                                                         
                                                                           
                                                                           

Get Restriction : Get-ExecutionPolicy
	--> Restricted
	--> AllSigned 
	--> RemoteSigned
	--> Unrestricted


Delete All App Pre-loading : Get-AppxPackage -AllUsers | Remove-AppxPackage

Delete Specif App : Get-Package | Where-Object {$_.Name -match "name App"} | Uninstall-Package -Confirm:$false

Delete One App Only :
	3D printing : `Get-AppxPackage *3dbuilder* | Remove-AppxPackage`
	Camera : `Get-AppxPackage *camera* | Remove-AppxPackage`
	Mail/Calendar : `Get-AppxPackage *communi* | Remove-AppxPackage`
	Money/Sports/News/Weather : `Get-AppxPackage *bing* | Remove-AppxPackage`
	Music and TV/Videos : `Get-AppxPackage *zune* | Remove-AppxPackage`
	Solitaire : `Get-AppxPackage *solit* | Remove-AppxPackage`
	People : `Get-AppxPackage *people* | Remove-AppxPackage`
	Phone integration : `Get-AppxPackage *phone* | Remove-AppxPackage`
	Photos : `Get-AppxPackage *photo* | Remove-AppxPackage`
	Voice Recorder : `Get-AppxPackage *soundrec* | Remove-AppxPackage`
	Xbox app : `Get-AppxPackage *xbox* | Remove-AppxPackage`

Install All App pre-loading : `Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}`

Install Specific App pre-loading: `Add-AppxPackage -register « C:\Program Files\WindowsApps\*xxxxxxxx*\AppxManifest.xml » -DisableDevelopmentMode`

	3D printing = `*3dbuilder*`

	Camera = `*camera*`

	Mail/Calendar = `*windowscommunicationsapps*`
	
	Solitaire = `*solitairecollection*`

	People = `*people*`

	Phone integration = `*windowsphone*`

	Photos = `*photo*`

	Xbox App = `*xboxapp*`

