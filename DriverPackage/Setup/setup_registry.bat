echo [ 1 ] - Copy Files to C:\ and Exit
echo [ 2 ] - Copy Files to C:\ and Restart
echo [ 3 ] - Copy Files to C:\ and Proceed
echo [ 4 ] - Wallpaper, USB Port, Settings, Task Manager
echo [ 5 ] - Wallpaper
echo [ 6 ] - USB PORT
echo [ 7 ] - Settings
echo [ 8 ] - Task Manager
echo [ Any other Key ] - Go back to Main Menu
set /p registry=" Choose:" 
if "%registry%"=="1" (
	call copy_files
) else if "%registry%"=="2" (
	call copy_files
	call restart
) else if "%registry%"=="3" (
	call copy_files
	call copy_wallpaper
	call set_usbport
	call set_settings
	call taskmanager
) else if "%registry%"=="4" (
	call copy_wallpaper
	call set_usbport
	call set_settings
	call taskmanager
) else if "%registry%"=="5" (
	call copy_wallpaper
) else if "%registry%"=="6" (
	call set_usbport
) else if "%registry%"=="7" (
	call set_settings
) else if "%registry%"=="8" (
	call taskmanager
)

exit /B