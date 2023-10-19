@echo off

FOR /L %%i IN (1,1,5) DO (
    echo Creating Victim #%%i
    SET CONTAINER_NAME=busybox-victim-%%i
    docker run -itd --name %CONTAINER_NAME% ubuntu:latest
    echo Creating %CONTAINER_NAME% DONE!!!
)
