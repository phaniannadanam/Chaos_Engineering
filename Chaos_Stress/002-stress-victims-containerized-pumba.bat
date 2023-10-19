@echo off

REM Number of parallel loops to start in each container
set loops_per_container=10

REM Start multiple infinite loops in each busybox container to simulate more CPU stress
for /L %%i in (1,1,5) do (
    for /L %%j in (1,1,%loops_per_container%) do (
        docker exec -d busybox-victim-%%i sh -c "while true; do :; done"
    )
)

REM There is no direct equivalent for the 'wait' command in a batch script. 
REM The script will proceed to execute commands sequentially without waiting for background tasks.
