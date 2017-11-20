echo Removing ITTECH from Administrator....
net localgroup Administrators "ITTECH" /delete
echo ITTECH Removed...
echo Removing ITTECH from users
net user ITTECH /delete
if exist "C:\Users\ITTECH" (
	rmdir /S /Q C:\Users\ITTECH 
)

