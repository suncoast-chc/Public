<# 
     
     This script will look at the current DHCP configuration
     and make it static to the same configuration
 
#> 

$NICs = Get-WMIObject Win32_NetworkAdapterConfiguration -computername . | where{$_.IPEnabled -eq $true -and $_.DHCPEnabled -eq $true} 
Foreach($NIC in $NICs) { 
    $ip = ($NIC.IPAddress[0]) 
    $gateway = $NIC.DefaultIPGateway 
    $subnet = $NIC.IPSubnet[0] 
    $dns = $NIC.DNSServerSearchOrder 
    $NIC.EnableStatic($ip, $subnet) 
    $NIC.SetGateways($gateway) 
    $NIC.SetDNSServerSearchOrder($dns) 
    $NIC.SetDynamicDNSRegistration("FALSE") 
} 
IPConfig /all