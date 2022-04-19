"enabling RDP...""

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

::RDP is a secure network communications protocool developed by microsoft it enables network administartors to remotly diagnose problems that individual users encounter It also gives users remote acces to their physical work desktop computers RDP is a secure, interoperable protocol that creates secure connections between clients, servers and virtual machines

::Use windows event Viewer to audit RDP Use network level authentication Use the "high" encryption level Disale LTP redirection Disable clipboard redirection Disable network printer redirection Restric admins to one session

::Group policies:

::Restrict Remote Desktop services: make sure Restrict Remote Desktop Services users to a single Remote Desktop Services is enabled

::connection -->Device and resource redirection folder-->do not allow drive redirection:Enabled Do not allow LPT port redirection setting: Enabled

::Device and resource Redirection --> Printer Redirection--> Do not allow client printer redirection:Enabled

::Device and Resource Redirection --> Security folder --> Set client connection encryption level --> Set client encryption level : Enabled --> Feild next to encryption level: High level

::Require user authentication for remote connections by using Network Level Authentication: Enabled

::Do not allow COM port redirection: Enabled

::Do not allow passwords to be saved: Enabled

::Do not allow supported Plug and Play device redirection: Enabled

::Set time limit for disconnected sessions: 120 seconds

::Set time limit for active but idle Remote Desktop Services sessions: 24 hours
