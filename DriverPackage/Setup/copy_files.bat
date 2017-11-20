rem if exist C:\Windows\DriverPackage (
rem 	echo "Files already exists!"	
rem 	exit /b
rem ) else (
rem 	if not "%~dp0"=="C:\Windows\DriverPackage" (
rem 		echo Copying the Folder to a certain location
rem 		xcopy /i /e DriverPackage C:\Windows\DriverPackage /y
rem 		echo Copying done
rem 	)
rem )
xcopy /i /e C:\DriverPackage C:\Windows\DriverPackage /y