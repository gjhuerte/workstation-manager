echo Removing Administator from Administrator....
net localgroup Administrators "Admin" /delete
echo Removing Administrator from users
net user "Admin" /delete
if exist "C:\Users\Admin" (
	rmdir /S /Q C:\Users\Admin 
)
echo Administrator Removed...

