@echo off
:loop
cls
echo Monitoring Containers...

FOR /F %%c IN (victims.txt) DO (
    echo Status for %%c:
    docker inspect --format="{{.Name}}: {{.State.Status}}" %%c
)

timeout /t 5
goto loop
