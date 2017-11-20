echo **Settings**
echo [ Enable - E ]
echo [ Disable - D ]
echo [ Any other key to cancel ]
set /p settings="Choose:" 

if "%settings%"=="E" (
	RegistryKey\Enable\enable.settings.reg
	rem RegistryKey\Enable\enable.change.wallpaper.reg
	RegistryKey\Enable\Enable.Active.Desktop.reg
	echo Settings Enabled
) else if "%settings%"=="D" (
	RegistryKey\Disable\disable.settings.reg
	rem RegistryKey\Disable\disable.change.wallpaper.reg
	RegistryKey\Disable\Disable.Active.Desktop.reg
	echo Settings Disabled
)

exit /B