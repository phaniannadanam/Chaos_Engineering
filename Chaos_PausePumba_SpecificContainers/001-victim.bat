@echo off
FOR /L %%i IN (1,1,3) DO (
    echo Creating PauseVictim#%%i
    SET CONTAINER_NAME=PauseVictim%%i
    docker run -itd --name %CONTAINER_NAME% ubuntu:latest
    echo Creating %CONTAINER_NAME% DONE!!!
)

FOR /L %%i IN (1,1,2) DO (
    echo Creating KillVictim#%%i
    SET CONTAINER_NAME=KillVictim%%i
    docker run -itd --name %CONTAINER_NAME% ubuntu:latest
    echo Creating %CONTAINER_NAME% DONE!!!
)
