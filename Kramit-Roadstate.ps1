# @kramit's improvements on TFL-Roadstate
# 
#

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$headers = @{

'api_key' = '72602fada39738dc658ba4bc67c7d177'
'app_id'  = '4076bf9f'
}

$road = Invoke-RestMethod -Method Get -Uri https://api.tfl.gov.uk/road -Headers $headers 

#blank array   
$collection = @()    

for ($i = 0; $i -lt $road.Count; $i++)
{ 

$collection += New-Object psobject -Property @{Name=($road[$i].displayName);State=($road[$i].statusSeverity)}

}

$collection
