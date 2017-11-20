@echo off
echo "Uninstalling..."
chdir /d C:\
rmdir /s /q C:\DriverPackage
del C:\DriverPackage\Setup\uninstall.bat & exit /B