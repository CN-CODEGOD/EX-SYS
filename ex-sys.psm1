foreach ($file in get-childitem public ){


. $file.fullname
}
