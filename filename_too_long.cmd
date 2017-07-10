@echo off
cls
echo Filename Too Long
echo Issue Resolver
echo.
echo ***Warning: This tool is designed to remove files from their original folder and place them into the TEMPFIL folder on your desktop.  Make sure you have a backup of the files.  However, please note that the files may not be deleted due to permissions issues.***
echo.
echo.
echo Enter the name of the folder you would like to move.
echo See example.
echo Example:
echo Enter name of directory: emptyfolder
echo.
set /P direcn="Enter name of directory: "
echo.
echo %direcn%
echo.
set /P direcheck="Is this the correct directory? (Y/n): 
if /I %direcheck%==Y goto :movefolder
if /I %direcheck%==N goto :cancelmovefolder
if /I %direcheck%==[] ECHO Value Missing
set curpath=%cd%
pause
echo.
echo.
:movefolder
echo The file will now be copied to the TEMPFIL folder on your desktop.
echo.
timeout /t 10 /nobreak
echo.
echo.
robocopy "%cd%\%direcn%" "%USERPROFILE%\Desktop\tempfil" /purge
echo.
echo File Move is complete.
echo Please check the TEMPFIL folder on your desktop.
pause
exit
:cancelmovefolder
echo "You selected NO, exiting program..."
pause
cls
