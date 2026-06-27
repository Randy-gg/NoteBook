@echo off
echo Pushing to origin/master...
cd /d %~dp0..\
set GIT_CONFIG_GLOBAL=%~dp0.gitconfig
git -c user.name=Randy-gg -c user.email=randy.y.b.li@gmail.com push origin master
if %errorlevel% equ 0 (
    echo Push successful!
) else (
    echo Push failed. Error code: %errorlevel%
)
pause
