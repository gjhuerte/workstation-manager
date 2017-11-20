set /p port="USB Port [ Enable - E ] [ Disable - D ]:" 

if "%port%"=="E" (
	RegistryKey\Enable\enable.usb.port.reg
	echo Port Enabled
) else (
	RegistryKey\Disable\disable.usb.port.reg
	echo Port Disabled
)