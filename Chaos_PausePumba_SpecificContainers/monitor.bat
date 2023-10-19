@echo off
:loop
cls
echo Monitoring Containers...

FOR %%c IN (PauseVictim1 PauseVictim2 PauseVictim3 KillVictim1 KillVictim2) DO (
    echo Status for %%c:
    docker inspect --format="{{.Name}}: {{.State.Status}}" %%c
)

timeout /t 5
goto loop
