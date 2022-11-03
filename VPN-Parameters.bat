print "Chaning VPN paramerters"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v AssumeUDPEncapsulationContextOnSendRule /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Rasman\Parameters" /v AllowL2TPWeakCrypto /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Rasman\Parameters" /v ProhibitIpSec /t REG_DWORD /d 0 /f
print "Please reboot your PC"
shutdown /i