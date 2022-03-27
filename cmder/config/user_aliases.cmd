;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

e.=explorer .
a.=for /F "tokens=*" %a in ('@cd') do C:\Asr\AsrLoad.exe /n "%a"

ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
cmderr=cd /d "%CMDER_ROOT%"

cd=pushd $*
cdh=pushd %USERPROFILE%
back=popd

..=pushd ..\
...=pushd ..\..
....=pushd ..\..\..

v=vim $*
vi=vim $*

gb=start "" "C:\Program Files\Git\git-bash.exe"
gs=git status $*
gd=git diff $*
gdd=git diff --cached $*
gl=git log --all $*
gla=git log --graph --all --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative $*
ga=git add $*
gc=git commit $*
gsh=git push $*
gll=git pull $*
