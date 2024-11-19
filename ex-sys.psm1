




function ex-sys {

[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $param
)

function help {

    art.exe text HELP
    write "
    ex-sys ls list nested project
    ex-sys ex-sys 
    "


    write "ex-sys变量
    
    expath: $expath 
    xml: $xml
    exsys: $exsys
    "




}

function ex-syswtk {
   
    art.exe text "ex-sys"
    art.exe text "welcome"
    write "ex-sys is a global sys managment including file path, it merge all the project together and build with it
            base of the project
            run ex-sys help for help
            "

    
}
function ls {
    art.exe text "ls:"
    write "
   parent modules:
   nested modules:
    child modules:

    import-xml
    decription:project to import /export object into xml
    git https://github.com/CN-CODEGOD/import-xml
   
   "
    
}




switch ($para) {
    LS { LS }

    Default {ex-syswtk  }
}


}







