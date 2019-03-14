#
# This is a small Transport For London project.
# 20190314
# https://api.tfl.gov.uk/

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$headers = @{

'api_key' = '72602fada39738dc658ba4bc67c7d177'
'app_id'  = '4076bf9f'
}

$road = Invoke-RestMethod -Method Get -Uri https://api.tfl.gov.uk/road -Headers $headers 

for ($i = 0; $i -lt 23; $i++)
{ 
    
 
$rdname =  $road[$i].displayName

#[array]$state = $road[$i].statusSeverity

#$tolower = $airquality.tolower()

echo "=================================="

Write-Output -InputObject ('Name: {0}' -f $rdname)

Write-Output -InputObject ('Road state is: {0}' -f $road[$i].displayName)

echo "=================================="

 
}
