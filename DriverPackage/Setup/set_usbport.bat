echo **USB Port**
echo [ Enable - E ]
echo [ Disable - D ] 
set /p port="Choose:" 

if "%port%"=="E" (
	RegistryKey\Enable\enable.usb.port.reg
	echo Port Enabled
) else if "%port%"=="D" (
	RegistryKey\Disable\disable.usb.port.reg
	echo Port Disabled
)

exit /B