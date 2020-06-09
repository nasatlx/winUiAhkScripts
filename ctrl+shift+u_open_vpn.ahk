^+v::
SetWorkingDir, C:\Program Files\OpenVPN\config 
Run C:\Program Files\OpenVPN\bin\openvpn-gui.exe --connect vpnbook-de4-tcp443.ovpn
Return


^!+v::
Process,Close,openvpn.exe
Process,Close,openvpn-gui.exe
MsgBox,VPN Off
Return

