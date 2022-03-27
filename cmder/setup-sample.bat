@echo off

REM Usage
REM ** RUN AS ADMIN **
REM .\setup.bat

REM configure
set target_location="path\to\cmder"

REM Main script
cd /d %~dp0
cd %target_location%
mklink "%target_location%\config\settings" "%USERPROFILE%\.shell\cmder\config\settings"
mklink "%target_location%\config\user_profile.cmd" "%USERPROFILE%\.shell\cmder\config\user_profile.cmd"
mklink "%target_location%\config\user_aliases.cmd" "%USERPROFILE%\.shell\cmder\config\user_aliases.cmd"
mklink "%target_location%\bin\ghql.bat" "%USERPROFILE%\.shell\cmder\bin\ghql.bat"
mklink "%target_location%\bin\h.bat" "%USERPROFILE%\.shell\cmder\bin\h.bat"

REM vim: set fenc=cp932 ff=dos nomodified:
