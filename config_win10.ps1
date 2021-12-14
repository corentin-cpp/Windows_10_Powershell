Get-AppxPackage -AllUsers | Remove-AppxPackage
Add-AppxPackage -register « C:\Program Files\WindowsApps\*photo*\AppxManifest.xml » -DisableDevelopmentMode
