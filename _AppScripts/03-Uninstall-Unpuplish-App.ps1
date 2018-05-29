# All functions here https://github.com/Microsoft/navcontainerhelper

$ContainerName = 'navserver'

Get-NavContainerAppInfo -containerName $ContainerName

$AppName = 'Webinar-17-04-18'

UnInstall-NavContainerApp -containerName $ContainerName -appName $AppName

UnPublish-NavContainerApp -containerName $ContainerName -appName $AppName