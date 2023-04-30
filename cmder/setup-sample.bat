@echo off

REM Usage
REM ** RUN AS ADMIN **
REM .\setup.bat

REM configure
set target_location="path\to\cmder"

REM Main script
cd /d %~dp0
xcopy "config\settings" "%target_location%\config\settings"
xcopy "config\user_profile.cmd" "%target_location%\config\user_profile.cmd"
xcopy "config\user_aliases.cmd" "%target_location%\config\user_aliases.cmd"
xcopy "bin\ghql.bat" "%target_location%\bin\ghql.bat"
xcopy "bin\h.bat" "%target_location%\bin\h.bat"

REM vim: set fenc=cp932 ff=dos nomodified:
