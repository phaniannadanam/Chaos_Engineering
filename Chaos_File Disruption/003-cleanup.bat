@echo off
FOR /F %%c IN (victims.txt) DO (
    echo Cleaning up %%c
    docker stop %%c
    docker rm %%c
)

rd /s /q demo_content
del victims.txt
