@echo off

call :heading

:heading
cls
echo ===================================================================================================================
echo ============================= COLLEGE OF COMPUTER AND INFORMATION SCIENCES=========================================
echo ============================= LABORATORY OPERATIONS OFFICE ========================================================
echo =================================== Miscellaneous Jobs ============================================================
echo ===================================================================================================================
echo "Starting...."
chdir /d %~dp0
echo Directory %cd%
rem call :check_permissions
rem call :security
call :options
call :startup
exit /B

:check_permissions
echo Administrative permissions required. Detecting permissions...
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Success: Administrative permissions confirmed.
) else (
    echo Failure: Current permissions inadequate.
)
EXIT /B

pause >nul

:security
set /p Input="Enter Password:" 

if "%Input%"=="CCIS" (
	call :run_registryeditor
) else (
	echo Invalid Password 
)
exit /B

:options 
echo [ 1 ] - Setup Accounts
echo [ 2 ] - Registry Edit
echo [ 3 ] - Animation
echo [ 4 ] - Restart
echo [ 5 ] - Shutdown
echo [ 0 ] - Uninstall
echo [ X ] - Exit
set /p setup=" Choose:" 
if "%setup%"=="1" (
	call :accounts
) else if "%setup%"=="2" (
	call :registry_editor
) else if "%setup%"=="3" (
	call :animation
) else if "%setup%"=="4" (
	call restart
) else if "%setup%"=="5" (
	call shutdown
) else if "%setup%"=="X" (
	exit
) else if "%setup%"=="0" (
	call uninstall
)

exit /B

:accounts
echo [ 1 ] - Create Administrator
echo [ 2 ] - Create Administrator and Restart
echo [ 3 ] - Remove all Accounts
echo [ 4 ] - Remove all Accounts and Create ITTECH and Student without Administrator Priviledge
echo [ 5 ] - Remove all Accounts and Create ITTECH and Student with Administrator Priviledge
echo [ 6 ] - Remove all Accounts, Create ITTECH and Student with Administrator Priviledge, Restart
echo [ 7 ] - Create ITTECH with Administrator Priviledge
echo [ 8 ] - Setup Student
echo [ 9 ] - Remove Administrator
echo [ G ] - Remove Guest
echo [ Any Other Key ] - Go back to Main Menu
set /p acc="Choose:" 
if "%acc%"=="1" (
	call create_admin
) else if "%acc%"=="2" (
	call create_admin
	call restart
) else if "%acc%"=="3" (
	call :remove_all_accounts
) else if "%acc%"=="4" (
	call :remove_all_accounts
	call create_ittech
	call create_student
) else if "%acc%"=="5" (
	call :remove_all_accounts
	call create_ittech
	call create_student
	call set_student_as_admin
) else if "%acc%"=="6" (
	call :remove_all_accounts
	call create_ittech
	call create_student
	call set_student_as_admin
	call restart
) else if "%acc%"=="7" (
	call create_ittech
) else if "%acc%"=="8" (
	call :setup_student
) else if "%acc%"=="9" (
	call remove_admin
) else if "%acc%"=="G" (
	call remove_guest
) 
exit /B

:setup_student
echo [ 1 ] - Create Student Account
echo [ 2 ] - Set Student As Administrator
echo [ 3 ] - Run Registry for Students
echo [ 4 ] - Remove Administrator Access From Student
echo [ Any Other Key ] - Go Back to Main Menu
set /p admin="Choose:" 
if "%admin%"=="1" (
	call create_student
) else if "%admin%" == "2" (
	call set_student_as_admin
) else if "%admin%" == "3" (
	call run_registry_as_student
) else if "%admin%" == "4" (
	call remove_admin_from_student
)
exit /B

:remove_all_accounts
call remove_ittech
call remove_user
call remove_student 
exit /B


:registry_editor
call setup_registry
exit /B

:animation
call setup_animation

:startup
set /p repeat="Do you want to repeat [ Y ] [ N ]:" 
if "%repeat%"=="Y" (
	call :heading
) else (
	exit
)