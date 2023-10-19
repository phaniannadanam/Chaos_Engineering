@echo off

REM Create the victim based on the "nginx:latest" image WITHOUT exposing its port to the host
echo Creating Victim: nginx-victim
docker run -itd --name nginx-victim nginx:latest
echo Creating nginx-victim DONE!!!
