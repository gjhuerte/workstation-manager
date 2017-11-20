@echo off
echo Copying wallpaper...
if exist C:\Windows\Web\Wallpaper\wallpaper.jpg (
	echo "Files already exists!"
) else (
	echo Copying the Folder to a certain location
	xcopy /i /e wallpaper.jpg C:\Windows\Web\Wallpaper /y
	echo Copying done
)
echo Changing wallpaper...
RegistryKey\Wallpaper.reg
rem reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Windows\Web\Wallpaper\wallpaper.jpg /f
rem RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
echo Wallpaper Changed...
pause
echo Done...