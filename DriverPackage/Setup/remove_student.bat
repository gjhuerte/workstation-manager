echo Removing Student from Administrator....
net localgroup Administrators "student" /delete
net localgroup Administrators "Student" /delete
net localgroup Administrators "STUDENT" /delete
net localgroup Administrators "students" /delete
net localgroup Administrators "Students" /delete
net localgroup Administrators "STUDENTS" /delete
echo Removing Student from users
net user "student" /del
if exist "C:\Users\student" (
	rmdir /S /Q C:\Users\student
)

net user "Student" /del
if exist "C:\Users\Student" (
	rmdir /S /Q C:\Users\Student
)

net user "STUDENT" /del
if exist "C:\Users\STUDENT" (
	rmdir /S /Q C:\Users\STUDENT
)

net user "students" /del
if exist "C:\Users\students" (
	rmdir /S /Q C:\Users\students
)

net user "Students" /del
if exist "C:\Users\STUDENTS" (
	rmdir /S /Q C:\Users\STUDENTS
)

net user "STUDENTS" /del
if exist "C:\Users\STUDENTS" (
	rmdir /S /Q C:\Users\STUDENTS
)

echo Student Removed...

