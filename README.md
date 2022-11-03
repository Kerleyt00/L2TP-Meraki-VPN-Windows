# L2TP-Meraki-VPN-Windows
Meraki VPN parameters for the remote windows users that use the L2TP/IPsec VPN supported on the MX security appliances. The following scripts allow Windows PC users to connect when the MX security appliance is behind a NAT device.  

This also works for MikroTik routers that are also behind a NAT device. 

**Works on Windows 10/8.1/Vista and Windows Server 2016/2012R2/2008R2** 

These scripts open the Registry Editor (regedit.exe) and then create/make changes to the following registry key:
— HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent
Create a DWORD parameter with the name AssumeUDPEncapsulationContextOnSendRule and the value 2;


Please Note. Possible AssumeUDPEncapsulationContextOnSendRule values are:
- 0 – (a default value) suggests that the server is connected to the Internet without NAT
- 1 – the VPN server is behind a NAT device
- 2 — both VPN server and client are behind a NAT.

**After making any changes. Just restart your computer and make sure that the L2TP/IPsec VPN tunnel is established successfully.**
