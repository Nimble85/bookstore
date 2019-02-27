#Install-Module -Name Invoke-MsBuild -y

Import-Module $PSScriptRoot\VSSetup\VSSetup.psd1

$msBuildPath = (Get-VSSetupInstance | Select-VSSetupInstance -Version 15.0 -Product Microsoft.VisualStudio.Product.BuildTools).InstallationPath

if ([System.IntPtr]::Size -eq 8)
{
    $global:msbuildPath = Join-Path $msBuildPath 'MSBuild\15.0\Bin\amd64'
}
else
{
    $global:msbuildPath = Join-Path $msBuildPath 'MSBuild\15.0\Bin'
}

Write-Output "Using MSBuild from $global:msbuildPath"
Write-Output "MSBuild /version"

$msbuild = Join-Path $global:msbuildPath msbuild

& $msbuild /version

# 2. Build

##& $msbuild "$sln_file" /t:Build /v:q /nologo 