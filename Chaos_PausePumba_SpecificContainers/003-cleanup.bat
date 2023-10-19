@echo off
FOR /L %%i IN (1,1,3) DO (
    SET CONTAINER_NAME=PauseVictim%%i
    docker stop %CONTAINER_NAME%
    docker rm %CONTAINER_NAME%
)

FOR /L %%i IN (1,1,2) DO (
    SET CONTAINER_NAME=KillVictim%%i
    docker stop %CONTAINER_NAME%
    docker rm %CONTAINER_NAME%
)
