# Initalize the Variables
$Hour1= 0
$Min1= 0
$second1 = 0
$totalseconds = 0
$SecondsLeft = 0
#Get current time
$Hour1 = (get-Date).Hour;
$Min1 = (Get-Date).Minute;
$second1 = (Get-Date).Second;
#Convert Current time to Seconds
$totalseconds = $second1 + ($Min1 * 60) + ($Hour1 * 3600);
#Set Reboot time, hour in 24 time * 3600, to add something other than on the hour, add (MM * 60) 
$RebootTime = (22 *3600)
#Calculate Time left
$SecondsLeft = $RebootTime - $totalseconds
#Loop to countdown
while ($SecondsLeft -gt 0 )
{
    $Hour1 = (get-Date).Hour;
    $Min1 = (Get-Date).Minute;
    $second1 = (Get-Date).Second;
    $totalseconds = $second1 + ($Min1 * 60) + ($Hour1 * 3600);
    $SecondsLeft = $RebootTime - $totalseconds
}
#Force Reboot
Restart-Computer -Force
