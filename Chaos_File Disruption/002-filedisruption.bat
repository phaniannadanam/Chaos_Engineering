@echo off
FOR /F %%c IN (victims.txt) DO (
    echo Introducing file disruption to %%c
    FOR /F %%f IN ('docker exec -it %%c bash -c "ls /app" ^| sort /random ^| findstr /N "^" ^| findstr "^1:"') DO SET FILE_TO_DELETE=%%f
    docker exec -it %%c bash -c "rm /app/%FILE_TO_DELETE%"
    echo Deleted %FILE_TO_DELETE% from %%c
)
