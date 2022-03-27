@echo off
for /f "tokens=*" %%x in ('tac %CMDER_ROOT%/config/.history ^| peco') do (
  %%x
  break
)
REM vim: set fenc=cp932 ff=dos nomodified:
