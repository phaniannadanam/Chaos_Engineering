@echo off
set interval=5

:LOOP
cls

echo Container Status:
docker ps -a
echo.
echo CPU and Memory Usage:
docker stats --no-stream

REM Sleep for a while before looping
timeout /t %interval%

goto LOOP
