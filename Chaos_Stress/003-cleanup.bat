@echo off

REM Stop any loops or processes running within the containers
for /L %%i in (1,1,5) do (
    echo Stopping processes in busybox-victim-%%i
    docker exec busybox-victim-%%i pkill sh
)

REM Allow a moment for processes to terminate
timeout /t 2

REM Stop and remove the containers
for /L %%i in (1,1,5) do (
    echo Stopping and removing container busybox-victim-%%i
    docker rm -f busybox-victim-%%i
)

echo Cleanup completed.
