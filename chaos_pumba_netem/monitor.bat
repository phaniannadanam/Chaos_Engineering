@echo off
FOR /F %%v IN (victims.txt) DO (
    echo Status for %%v:
    docker inspect --format="{{.State.Status}}" %%v
)
