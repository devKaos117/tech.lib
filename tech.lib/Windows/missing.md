%SYSTEM_ROOT\system32\config\sam,system
%SYSTEM_ROOT\%NTDS\ntds.DIT
%SYSTEM_ROOT\repair
reg hklm\sam,system

%SYSTEM_ROOT\inetpub\logs\LogFiles\W3SVC1
%SYSTEM_ROOT\inetpub\wwwroot\web.config
%SYSTEM_ROOT\xampp\apache\logs

vssadmin
certutil
wmic
sc
icacls
accesschk
chcp
regsvr32
copy
net
cscript.exe
mshta
certreq.exe
[_Get-LocalUser_](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localuser)

psexec

<https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/bitsadmin>
BITSadmin-tool
System.Net.WebClient
Set-MpPreference

`[Microsoft.PowerShell.Commands.PSUserAgent]`

mstsc.exe

api monitor
<https://learn.microsoft.com/en-us/windows/win32/amsi/antimalware-scan-interface-portal>

Mark of the Web (MotW)

[_Local Security Authority Subsystem_](https://en.wikipedia.org/wiki/Local_Security_Authority_Subsystem_Service) (LSASS) is a process in Windows that handles user authentication, password changes, and [_access token_](https://docs.microsoft.com/en-us/windows/win32/secauthz/access-tokens) creation
