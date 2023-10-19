@echo off

FOR /L %%i IN (1,1,5) DO (
    echo Stopping processes in busybox-victim-%%i
    docker exec busybox-victim-%%i pkill stress-ng
)

REM Allow a moment for processes to terminate
timeout /t 2

FOR /L %%i IN (1,1,5) DO (
    echo Stopping and removing container busybox-victim-%%i
    docker rm -f busybox-victim-%%i
)

echo Cleanup completed.
