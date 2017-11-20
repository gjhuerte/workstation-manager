echo Removing ITTECH from Administrator....
net localgroup Administrators "IT-TECH" /delete
net localgroup Administrators "IT TECH" /delete
net localgroup Administrators "ITECH" /delete
net localgroup Administrators "ITTECH" /delete
echo ITTECH Removed...
echo Removing ITTECH from users
net user ITTECH /delete
if exist "C:\Users\ITTECH" (
	rmdir /S /Q C:\Users\ITTECH 
)

net user IT-TECH /delete
if exist "C:\Users\IT-TECH" (
	rmdir /S /Q C:\Users\IT-TECH 
)

net user "IT TECH" /delete
if exist "C:\Users\IT TECH" (
	rmdir /S /Q "C:\Users\IT TECH" 
)


net user ITECH /delete
if exist "C:\Users\ITTECH" (
	rmdir /S /Q C:\Users\ITECH 
)