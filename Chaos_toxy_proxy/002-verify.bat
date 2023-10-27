@echo off

REM Verify nginx-victim is serving content
echo Verifying nginx-victim:
docker exec nginx-victim curl localhost
