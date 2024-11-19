class path {
    [string]$path

    path([string]$path){

        if (!(Test-Path $path)) {
            throw $path
        }
        $this.path = $path
    }

  }

  class mainmath {
    

    static [object]lineIntersect($roadcoordinate1,$roadcoordinate2)
    {

$A1=$roadcoordinate1.z1 - $roadcoordinate1.z
$B1=$roadcoordinate1.x- $roadcoordinate1.x1
$C1=$A1*$roadcoordinate1.x+$B1*$roadcoordinate1.y


$A2=$roadcoordinate2.z1-$roadcoordinate2.z
$B2=$roadcoordinate2.x-$roadcoordinate2.x1
$C2=$A2*$roadcoordinate2.x+$B2*$roadcoordinate2.y
if ( $A1*$B2 -eq $A2*$B1   ) {
    return $null
}    

return [psobject]@{

    x=($B2*$C1-$B1*$C2)/($A1*$B2-$A2*$B1)
    z=($A1*$C2-$A2*$C1)/($A1*$B2-$A2*$B1)
}
    } 



   static [bool]inline($placecoordinate,$roadcoordinate){
    if (($roadcoordinate.x..$roadcoordinate.x1).contains($placecoordinate.x) -and ($roadcoordinate.z..$roadcoordinate.z1).contains($placecoordinate.z))

    {
    return $true
    }   
    return $false

    }
    

    static [int]calc (  
        [psobject]$place1,
        [psobject]$place2)
    
            
            {
         
           


            return [math]::sqrt(($place1.x-$place2.x )*($place1.x-$place2.x)+($place1.y-$place2.y)*($place1.y-$place2.y)+($place1.z-$place2.z)*($place1.z-$place2.z))
           
          
            
            
            
            
    
    
        }


[object]static lineexpression (
    [psobject]$line
)
{   
    $linecoordinate = $line.roadcoordinate
$A=$linecoordinate.z1-$linecoordinate.z
$B=$linecoordinate.x-$linecoordinate.x1
$C=$A*$linecoordinate.x+$B*$linecoordinate.y

return @{
    A=$A
    B=$B
    C=$C
}

} 

static [System.Numerics.Vector3]normal_vector(
    [System.Numerics.Vector3]$vector1
    ,
    [System.Numerics.Vector3]$vector2


)
{
return $null

}
}
