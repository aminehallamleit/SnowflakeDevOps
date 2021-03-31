@echo off 
:: This CMD script provides full QA execution
ECHO ============================
ECHO Start Testing ...
ECHO ============================
ECHO Connecting to Snowflake ...
ECHO ============================
del tempfile >nul 2>&1
for /F %%i in ('dir /b *.sql') do @echo| set /p    output= -f %%i  >> tempfile
set /p myvar= < tempfile 
del tempfile >nul 2>&1
::ECHO %myvar%

SET a=snowsql --authenticator https://logon.okta.com/ -a XX.eu-central-1 -d DATABASE -s DATABASE -w DEMO_WH -r SCHEMA
SET b=-u USER
SET c=%a% %b% %myvar%
%c%
ECHO ============================
ECHO END
ECHO ============================
PAUSE
