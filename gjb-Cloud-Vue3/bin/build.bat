@echo off
echo.
echo [???] ???Web?????????dist?????
echo.

%~d0
cd %~dp0

cd ..
yarn build:prod

pause