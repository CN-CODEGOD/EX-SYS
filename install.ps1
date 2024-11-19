[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [string]
    $Path
    
)

try {
    Test-Path $path    
}
catch {
    write-error "$path 不是有效路径"
}




function prerequire {


    try {
        art.exe  text ex-sys
        art.exe text welcome 
        }
        catch {
            
            try {
                pip install art    
                prerequire
            }
            catch {
            Write-Error 'error 0'
            }
        }
}
function installation {
  Write-Host "import-class"
  Add-Content -Path $PROFILE -Value "
  
  dir $psscriptroot\class|&{. $_.fullname}
  " 
  Write-Host "ADD variable "
  


  [System.Environment]
    
}


if ((Test-Path $path\ex-sys)) {

    Write-Error "error 0"
}


else {
    md $path\ex-sys
move $PSScriptRoot\class $path\ex-sys

move $PSScriptRoot\xml $path\ex-sys

move $PSScriptRoot\ex-sys.psm1 $path\ex-sys

New-ModuleManifest -Path $path\ex-sys\ex-sys.psd1 -RootModule ex-sys -Author cn_codegod -ModuleVersion 1.0

Write-Host "pre install complete"

installation

}


prerequire