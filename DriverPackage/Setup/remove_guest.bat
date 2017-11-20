echo Removing User from Administrator....
net localgroup Administrators "guest" /delete
net localgroup Administrators "guests" /delete
net localgroup Administrators "Guest" /delete
net localgroup Administrators "GUEST" /delete
net localgroup Administrators "GUESTS" /delete
echo Removing User from users

net user "guest" /del
if exist "C:\Users\guest" (
	rmdir /S /Q C:\Users\guest
)

net user "guests" /del
if exist "C:\Users\guests" (
	rmdir /S /Q C:\Users\guests
)

net user "Guest" /del
if exist "C:\Users\Guest" (
	rmdir /S /Q C:\Users\Guest 
)
net user "GUEST" /del
if exist "C:\Users\GUEST" (
	rmdir /S /Q C:\Users\GUEST
)

net user "GUESTS" /del
if exist "C:\Users\GUESTS" (
	rmdir /S /Q C:\Users\GUESTS 
)

echo User Removed...

