set /p animation="Animation [ E ] - Enable [ D ] - Disable:" 
if "%animation%"=="E" (
	RegistryKey\Enable\enable.first.signin.animation.reg
) else if "%animation%" == "D" (
	RegistryKey\Disable\disable.first.signin.animation.reg
)

exit /B