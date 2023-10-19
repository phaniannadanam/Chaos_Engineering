@echo off

FOR /L %%i IN (1,1,5) DO (
    SET CONTAINER_NAME=busybox-victim-%%i
    docker stop %CONTAINER_NAME% && docker rm %CONTAINER_NAME%
)
