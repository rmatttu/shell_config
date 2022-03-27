@echo off
for /f "tokens=*" %%x in ('ghq list -p ^| peco') do (
  cd %%x
  break
)
REM vim: set fenc=cp932 ff=dos nomodified:
