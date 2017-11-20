echo **Windows First Time Login Animation**
echo [ E ] - Enable
echo [ D ] - Disable
echo [ Any other key to cancel ]
set /p animation="Choose:" 
if "%animation%"=="E" (
	RegistryKey\Enable\enable.first.signin.animation.reg
) else if "%animation%" == "D" (
	RegistryKey\Disable\disable.first.signin.animation.reg
)

exit /B