@echo off
FOR /L %%i IN (1,1,2) DO (
    SET CONTAINER_NAME=KillVictim%%i
    echo Pausing %CONTAINER_NAME%
    docker pause %CONTAINER_NAME%
)

FOR /L %%i IN (1,1,3) DO (
    SET CONTAINER_NAME=PauseVictim%%i
    echo Killing %CONTAINER_NAME%
    docker kill %CONTAINER_NAME%
    timeout /t 30
)
