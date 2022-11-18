"Env:" | Write-Host -ForegroundColor DarkGreen
Get-ChildItem env:\

"PATH:" | Write-Host -ForegroundColor DarkGreen
${env:Path}.Split(';')

"DOTNET_ROOT: ${env:DOTNET_ROOT}" | Write-Host -ForegroundColor DarkGreen

"dotnet:" | Write-Host -ForegroundColor DarkGreen
Get-Command dotnet

"msbuild:" | Write-Host -ForegroundColor DarkGreen
Get-Command msbuild

