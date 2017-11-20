set /p taskmanager="Task Manager [ Enable - E ] [ Disable - D ]:" 

if "%taskmanager%"=="E" (
	REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
	echo Task Manager Enabled
) else if "%taskmanager%"=="D" (
	REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
	echo Task Manager Disabled
)