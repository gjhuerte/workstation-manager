echo Removing Password
net user "Students" /passwordreq:no
echo Removing Administrator Priviledge From Student
net localgroup Administrators Students /delete
echo Administrator Access Removed