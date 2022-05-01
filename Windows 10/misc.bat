@echo off
setlocal enabledelayedexpansion
net session

echo "Clearing DNS cache..."
ipconfig /flushdns
echo DNS cache cleared

sc config Server start=auto
net start Server
echo "Server service started"

echo "enabling data execution prevention..."

BCDEDIT /SET {CURRENT} NX ALWAYSON

echo "data execution prevention enabled"

echo "changing file system to NFTS..."

convert C: /fs:ntfs  

echo "file system changed"

echo "enabling smart screen"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableWindowsSmartScreen /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenTimeout /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableHistory /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableHistoryDetails /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableInPrivateBrowsing /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableInPrivateBrowsingDetails /t REG_DWORD /d 1 /f
echo "smart screen enabled"

echo "configuring screen timeout limit..."
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0" /v "ACSettingIndex" /t REG_DWORD /d 15 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\1" /v "DCSettingIndex" /t REG_DWORD /d 15 /f
echo "done"


echo "disabling certain tasks"
SCHTASKS /Change /TN "\Microsoft\Windows\WS\WSTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WOF\WIM-Hash-Validation" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WOF\WIM-Hash-Management" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WindowsUpdate\sih" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WDI\ResolutionHost" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Sysmain\ResPriStaticDbSync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SettingSync\NetworkStateChangeTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SettingSync\BackgroundUploadTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\PI\Sqm-Tasks" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maintenance\WinSAT" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\AppID\SmartScreenSpecific" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack" /DISABLE

