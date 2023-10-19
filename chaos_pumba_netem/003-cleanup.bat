@echo off
FOR /F %%v IN (victims.txt) DO (
    docker stop %%v
    docker start %%v
)

DEL victims.txt
