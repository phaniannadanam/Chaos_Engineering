@echo off
FOR /L %%i IN (1,1,5) DO (
    echo Creating Victim #%%i
    SET CONTAINER_NAME=http-victim-%%i
    
    docker run -itd --name %CONTAINER_NAME% -p 800%%i:8000 python:3.9-slim python -m http.server 8000
    echo Creating %CONTAINER_NAME% DONE!!!
)

docker ps --format "{{.Names}}" | findstr "http-victim-" > victims.txt
