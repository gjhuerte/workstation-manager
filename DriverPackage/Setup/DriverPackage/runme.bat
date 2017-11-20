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
set /p setup=" [ 1 ] - Setup Administrator Account [ 2 ] - Setup Student  [ 3 ] - Registry Edit [ 4 ] - Animation :" 
if "%setup%"=="2" (
	call :setup_user
) else if "%setup%"=="3" (
	call :registry_editor
) else if "%setup%"=="1" (
	call :accounts
) else if "%setup%"=="4" (
	call :animation
)
exit /B

:setup_user
set /p admin=" [ 1 ] - Create Student Account [ 2 ] - Set Student As Administrator [ 3 ] - Run Registry for Students [ 4 ] - Remove Administrator Access From Student" 
if "%admin%"=="4" (
	call remove_admin_from_student
) else if "%admin%" == "3" (
	call run_registry_as_student
) else if "%admin%" == "2" (
	call set_student_as_admin
) else if "%admin%" == "1" (
	call create_student
)
exit /B


:registry_editor
call setup_registry
exit /B

:accounts
set /p acc="[ 1 ] - Create Administrator   [ 2 ] - Remove all Accounts [ 3 ] - Create ITTECH [ 4 ] - Remove Administrator:" 
if "%acc%"=="1" (
	call create_admin
) else if "%acc%"=="2" (
	call remove_ittech
	call remove_user
	call remove_student 
) else if "%acc%"=="3" (
	call create_ittech
) else if "%acc%"=="4" (
	call remove_admin
) 
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