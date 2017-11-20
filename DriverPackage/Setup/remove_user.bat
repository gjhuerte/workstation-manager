echo Removing User from Administrator....
net localgroup Administrators "user" /delete
net localgroup Administrators "User" /delete
net localgroup Administrators "USER" /delete
net localgroup Administrators "USERS" /delete
echo Removing User from users

net user "user" /del
if exist "C:\Users\user" (
	rmdir /S /Q C:\Users\user
)

net user "User" /del
if exist "C:\Users\User" (
	rmdir /S /Q C:\Users\User 
)

net user "USER" /del
if exist "C:\Users\USER" (
	rmdir /S /Q C:\Users\USER
)

net user "USERS" /del
if exist "C:\Users\USERS" (
	rmdir /S /Q C:\Users\USERS 
)

echo User Removed...

