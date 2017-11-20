if exist C:\Windows\DriverPackage (
	echo "Files already exists!"	
	exit /b
) else (
	if not "%~dp0"=="C:\Windows\DriverPackage" (
		echo Copying the Folder to a certain location
		xcopy /i /e DriverPackage C:\Windows\DriverPackage /y
		echo Copying done
	)
)