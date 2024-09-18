class path {
    [string]$path

    path([string]$path){

        if (!(Test-Path $path)) {
            throw $path
        }
        $this.path = $path
    }

  }