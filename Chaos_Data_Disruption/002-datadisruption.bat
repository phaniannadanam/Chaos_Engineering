@echo off
FOR /F %%c IN (victims.txt) DO (
    echo Introducing data disruption to %%c
    docker exec -it %%c bash -c "echo 'Data Disruption' > /app/disruption.txt"
)
