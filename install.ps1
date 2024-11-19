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

if ((test-path $home\onedrive)) {
 
    Write-Error "error 0"

}
if ((Test-Path $home\onedrive\ex-sys)) {

    Write-Error "error 0"
}


else {
    md $HOME\onedrive\ex-sys
move $PSScriptRoot\class $HOME\onedrive\ex-sys

move $PSScriptRoot\xml $HOME\onedrive\ex-sys

move $PSScriptRoot\ex-sys.psm1 $HOME\onedrive\ex-sys

New-ModuleManifest -Path $HOME\onedrive\ex-sys\ex-sys.psd1 -RootModule ex-sys -Author cn_codegod -ModuleVersion 1.0

Write-Host "pre install complete"

installation

}


prerequire