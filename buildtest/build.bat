rem ==============================================
rem build batch sample
rem change filepath VSver 
rem 1:PAT1_SQL 2:PAT2_SQL
rem ==============================================

set /p type= PLEASE TYPE SWITCH NO:

del /Q .\SQL\*.*

if %type%==1 ( 
	xcopy PAT1_SQL\*.sql SQL\ 
) else if %type%==2 ( 
	xcopy PAT2_SQL\*.sql SQL\ 
) else ( 
	echo do nothing
)

rem set VsDevCmd.bat
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

rem build b MSBuild cmd
cd %~dp0
MSBuild .\buildtest.sln /t:clean;rebuild /p:Configuration=Release;Platform="x86"
if %ERRORLEVEL% neq 0 (
    echo ErrorLevel:%ERRORLEVEL%
    echo build failed
)

pause
