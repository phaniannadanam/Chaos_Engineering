@echo off

REM Create the victim based on the "nginx:latest" image and expose its port to the host on port 8080
echo Creating Victim: nginx-victim
docker run -itd -p 8080:80 --name nginx-victim nginx:latest
echo Creating nginx-victim DONE!!!
