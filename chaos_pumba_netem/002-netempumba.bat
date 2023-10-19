@echo off
FOR /F %%v IN (victims.txt) DO (
    echo Introducing delay to %%v
    pumba --log-level=info netem --duration=10m delay 100 %%v &
)
