# Script that adds the VPN parameters to PC
Write-Output "Chaning VPN paramerters"
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Services\PolicyAgent" -Name "AssumeUDPEncapsulationContextOnSendRule"
# Change the regkey
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\PolicyAgent" -Name "AssumeUDPEncapsulationContextOnSendRule" -value "2" -PropertyType "REG_DWORD"
#New-ItemProperty -Path "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Rasman\Parameters" -Name "AllowL2TPWeakCrypto" -PropertyType "REG_DWORD"  -value "1"
#New-ItemProperty -Path "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Rasman\Parameters" -Name "ProhibitIpSec" -PropertyType "REG_DWORD" -value "0"
Write-Output "VPN parameters changed, please reboot your PC"
Restart-Computer -Confirm