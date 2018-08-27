
## CHANGE THIS PATH IF YOU INSTALL THE DRIVER ELSEWHERE ##
Add-type -Path ".\files\Oracle.ManagedDataAccess.dll"

$functionFolders = @('functions', 'internal', 'classes')
ForEach ($folder in $functionFolders)
{
    $folderPath = Join-Path -Path $PSScriptRoot -ChildPath $folder
    If (Test-Path -Path $folderPath)
    {
        Write-Verbose -Message "Importing from $folder"
        $functions = Get-ChildItem -Path $folderPath -Filter '*.ps1'
        ForEach ($function in $functions)
        {
            Write-Verbose -Message "  Importing $($function.BaseName)"
            . $function.FullName
        }
    }
}
$publicFunctions = (Get-ChildItem -Path "$PSScriptRoot\functions" -Filter '*.ps1').BaseName
Export-ModuleMember -Function $publicFunctions
