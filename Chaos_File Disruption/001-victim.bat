@echo off
mkdir demo_content
echo Hello, World 1! > demo_content\file1.txt
echo Hello, World 2! > demo_content\file2.txt
echo Hello, World 3! > demo_content\file3.txt
echo Hello, World 4! > demo_content\file4.txt

FOR /L %%i IN (1,1,5) DO (
    echo Creating Victim #%%i
    SET CONTAINER_NAME=http-victim-%%i
    docker run -itd --name %CONTAINER_NAME% -p 800%%i:8000 -v %cd%\demo_content:/app python:3.9-slim python -m http.server --directory /app 8000
    echo Creating %CONTAINER_NAME% DONE!!!
)

docker ps --format "{{.Names}}" | findstr "http-victim-" > victims.txt
