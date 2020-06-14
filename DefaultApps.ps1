Import-Csv -Path "C:\PClist.csv" | % {
$computer = $_.Name
Invoke-Command -ComputerName $computer -ScriptBlock{
      Dism.exe /online /import-DefaultAppAssociations:\\server1\netlogon\DefaultApps.xml
     }
}
