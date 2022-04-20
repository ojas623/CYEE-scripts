@echo off
setlocal enabledelayedexpansion
net session

net stop AxInstSV
sc config AxInstSV start=disabled
net stop ALG
sc config ALG start=disabled
net stop ALG
sc config ALG start=disabled
net stop tzautoupdate
sc config tzautoupdate start=disabled
net stop BthAvctpSvc
sc config BthAvctpSvc start=disabled
net start BrokerInfrastructure
sc config BrokerInfrastructure start=auto
net start BFE
sc config BFE start=auto
net stop BTAGService
sc config BTAGService start=disabled
net stop BthHFSrv
sc config BthHFSrv start=disabled
net stop bthserv
sc config bthserv start=disabled
net stop BluetoothUserService
sc config BluetoothUserService start=disabled
net stop PeerDistSvc
sc config PeerDistSvc start=disabled
net stop CDPUserSvc
sc config CDPUserSvc start=disabled
net stop NfsClnt
sc config NfsClnt start=disabled
net start EventSystem
sc config EventSystem start=auto
net start CDPSvc
sc config CDPSvc start=auto
net start DiagTrack
sc config DiagTrack start=auto
net stop PimIndexMaintenanceSvc
sc config PimIndexMaintenanceSvc start=disabled
net start CoreMessagingRegistrar
sc config CoreMessagingRegistrar start=auto
net start CryptSvc
sc config CryptSvc start=auto
net start DusmSvc
sc config DusmSvc start=auto
net start DcomLaunch
sc config DcomLaunch start=auto
net start DoSvc
sc config DoSvc start=auto
net start Dhcp
sc config Dhcp start=auto
net start DPS
sc config DPS start=auto
net stop WdiServiceHost
sc config WdiServiceHost start=disabled
net stop WdiSystemHost
sc config WdiSystemHost start=disabled
net stop BthAvctpSvc
sc config BthAvctpSvc start=disabled
net stop TrkWks
sc config TrkWks start=disabled
net stop MSDTC
sc config MSDTC start=disabled
net stop dmwappushservice
sc config dmwappushservice start=disabled
net start Dnscache
sc config Dnscache start=auto
net stop MapsBroker
sc config MapsBroker start=disabled
net stop EapHost
sc config EapHost start=disabled
net stop Fax
sc config Fax start=disabled
net stop fhsvc
sc config fhsvc start=disabled
net stop BthAvctpSvc
sc config BthAvctpSvc start=disabled
net stop fdPHost
sc config fdPHost start=disabled
net stop FDResPub
sc config FDResPub start=disabled
net stop lfsvc
sc config lfsvc start=disabled
net start gpsvc
sc config gpsvc start=auto
net stop lfsvc
sc config lfsvc start=disabled
net stop HomeGroupListener
sc config HomeGroupListener start=disabled
net stop HomeGroupProvider
sc config HomeGroupProvider start=disabled
net stop hidserv
sc config hidserv start=disabled
net stop IISADMIN
sc config IISADMIN start=disabled
net stop irmon
sc config irmon start=disabled
net stop UI0Detect
sc config UI0Detect start=disabled
net stop SharedAccess
sc config SharedAccess start=disabled
net stop iphlpsvc
sc config iphlpsvc start=disabled
net stop lfsvc
sc config lfsvc start=disabled
net stop IpxlatCfgSvc
sc config IpxlatCfgSvc start=disabled
net stop lltdsvc
sc config lltdsvc start=disabled
net start LSM
sc config LSM start=auto
net stop LxssManager
sc config LxssManager start=disabled
net stop MessagingService
sc config MessagingService start=disabled
net stop AppVClient
sc config AppVClient start=disabled
net stop wlidsvc
sc config wlidsvc start=disabled
net stop FTPSVC
sc config FTPSVC start=disabled
net stop MSiSCSI
sc config MSiSCSI start=disabled
net stop NgcSvc
sc config NgcSvc start=disabled
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net stop SmsRouter
sc config SmsRouter start=disabled
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net stop NetTcpPortSharing
sc config NetTcpPortSharing start=disabled
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net stop Ncbservice
sc config Ncbservice start=disabled
net stop NcdAutoSetup
sc config NcdAutoSetup start=disabled
net stop NcaSvc
sc config NcaSvc start=disabled
net start NlaSvc
sc config NlaSvc start=auto
net start nsi
sc config nsi start=auto
net stop CscService
sc config CscService start=disabled
net stop SEMgrSvc
sc config SEMgrSvc start=disabled
net stop PNRPsvc
sc config PNRPsvc start=disabled
net stop p2psvc
sc config p2psvc start=disabled
net stop p2pimsvc
sc config p2pimsvc start=disabled
net stop PhoneSvc
sc config PhoneSvc start=disabled
net stop PNRPAutoReg
sc config PNRPAutoReg start=disabled
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net start Power
sc config Power start=auto
net stop Spooler
sc config Spooler start=disabled
net stop PrintNotify
sc config PrintNotify start=disabled
net stop PrintWorkflow
sc config PrintWorkflow start=disabled
net stop wercplsupport
sc config wercplsupport start=disabled
net stop PcaSvc
sc config PcaSvc start=disabled
net stop QWAVE
sc config QWAVE start=disabled
net stop RmSvc
sc config RmSvc start=disabled
net stop RasAuto
sc config RasAuto start=disabled
net stop RasMan
sc config RasMan start=disabled
net stop SessionEnv
sc config SessionEnv start=disabled
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net stop TermService
sc config TermService start=disabled
net stop UmRdpService
sc config UmRdpService start=disabled
net stop RpcSs
sc config RpcSs start=disabled
net stop RpcLocator
sc config RpcLocator start=disabled
net stop RemoteRegistry
sc config RemoteRegistry start=disabled
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net stop RetailDemo
sc config RetailDemo start=disabled
net stop RemoteAccess
sc config RemoteAccess start=disabled
net start RpcEptMapper
sc config RpcEptMapper start=auto
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net start SamSs
sc config SamSs start=auto
net stop SensorDataService
sc config SensorDataService start=disabled
net stop SensrSvc
sc config SensrSvc start=disabled
net stop SensorService
sc config SensorService start=disabled
net start LanmanServer
sc config LanmanServer start=auto
net start Server
sc config Server start=auto
net stop NgcCtnrSvc
sc config NgcCtnrSvc start=disabled
net stop shpamsvc
sc config shpamsvc start=disabled
net start ShellHWDetection
sc config ShellHWDetection start=auto
net stop SMTPSVC
sc config SMTPSVC start=disabled
net stop simptcp
sc config simptcp start=disabled
net stop SCardSvr
sc config SCardSvr start=disabled
net stop ScDeviceEnum
sc config ScDeviceEnum start=disabled
net stop SCPolicySvc
sc config SCPolicySvc start=disabled
net stop SharedRealitySvc
sc config SharedRealitySvc start=disabled
net stop SNMP
sc config SNMP start=disabled
net stop SNMPTRAP
sc config SNMPTRAP start=disabled
net start sppsvc
sc config sppsvc start=auto
net stop SMTPSVC
sc config SMTPSVC start=disabled
net stop SSDPSRV
sc config SSDPSRV start=disabled
net stop WiaRpc
sc config WiaRpc start=disabled
net stop SysMain
sc config SysMain start=disabled
net stop OneSyncSvc
sc config OneSyncSvc start=disabled
net start SENS
sc config SENS start=auto
net start SystemEventsBroker
sc config SystemEventsBroker start=auto
net start ShellHWDetection
sc config ShellHWDetection start=auto
net start Schedule
sc config Schedule start=auto
net stop SMTPSVC
sc config SMTPSVC start=disabled
net stop TapiSrv
sc config TapiSrv start=disabled
net stop SMTPSVC
sc config SMTPSVC start=disabled
net start emet_service
sc config emet_service start=auto
net stop Themes
sc config Themes start=disabled
net start tiledatamodelsvc
sc config tiledatamodelsvc start=auto
net stop TabletInputService
sc config TabletInputService start=disabled
net stop SMTPSVC
sc config SMTPSVC start=disabled
net stop upnphost
sc config upnphost start=disabled
net stop UserDataSvc
sc config UserDataSvc start=disabled
net stop UnistoreSvc
sc config UnistoreSvc start=disabled
net stop UevAgentService
sc config UevAgentService start=disabled
net start UserManager
sc config UserManager start=auto
net start ProfSvc
sc config ProfSvc start=auto
net stop WalletService
sc config WalletService start=disabled
net stop WMSvc
sc config WMSvc start=disabled
net stop WebClient
sc config WebClient start=disabled
net stop WFDSConMgrSvc
sc config WFDSConMgrSvc start=disabled
net stop UnistoreSvc
sc config UnistoreSvc start=disabled
net stop Audiosrv
sc config Audiosrv start=disabled
net stop AudioEndpointBuilder
sc config AudioEndpointBuilder start=disabled
net stop SDRSVC
sc config SDRSVC start=disabled
net stop WbioSrvc
sc config WbioSrvc start=disabled
net stop Wcmsvc
sc config Wcmsvc start=disabled
net stop WCNVSVC
sc config WCNVSVC start=disabled
net start FrameServer
sc config FrameServer start=auto
net start Sense
sc config Sense start=auto
net start WinDefend
sc config WinDefend start=auto
net start SecurityHealthService
sc config SecurityHealthService start=auto
net stop WEPHOSTSVC
sc config WEPHOSTSVC start=disabled
net stop WerSvc
sc config WerSvc start=disabled
net stop Wecsvc
sc config Wecsvc start=disabled
net start EventLog
sc config EventLog start=auto
net start MpsSvc
sc config MpsSvc start=auto
net start FontCache
sc config FontCache start=auto
net stop stisvc
sc config stisvc start=disabled
net stop wisvc
sc config wisvc start=disabled
net stop Wecsvc
sc config Wecsvc start=disabled
net start WLMS
sc config WLMS start=auto
net start Winmgmt
sc config Winmgmt start=auto
net stop WMPNetworkSvc
sc config WMPNetworkSvc start=disabled
net stop Wecsvc
sc config Wecsvc start=disabled
net stop icssvc
sc config icssvc start=disabled
net stop spectrum
sc config spectrum start=disabled
net stop WpnService
sc config WpnService start=disabled
net stop WpnUserService
sc config WpnUserService start=disabled
net stop PushToInstall
sc config PushToInstall start=disabled
net stop WinRM
sc config WinRM start=disabled
net stop WSearch
sc config WSearch start=disabled
net stop InstallService
sc config InstallService start=disabled
net start W32Time
sc config W32Time start=auto
net stop WinHttpAutoProxySvc
sc config WinHttpAutoProxySvc start=disabled
net stop dot3svc
sc config dot3svc start=disabled
net stop WlanSvc
sc config WlanSvc start=disabled
net stop workfolderssvc
sc config workfolderssvc start=disabled
net stop W3SVC
sc config W3SVC start=disabled
net stop WwanSvc
sc config WwanSvc start=disabled
net stop XboxGipSvc
sc config XboxGipSvc start=disabled
net stop xbgm
sc config xbgm start=disabled
net stop XblAuthManager
sc config XblAuthManager start=disabled
net stop XblGameSave
sc config XblGameSave start=disabled
net stop XboxNetApiSvc
sc config XboxNetApiSvc start=disabled