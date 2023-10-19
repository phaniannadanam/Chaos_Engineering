@echo off

REM Pull busybox image from Docker Hub
docker pull busybox

echo Creating Victim #1
docker run -itd --name busybox-victim-1 busybox
echo Creating Victim #1 DONE!!!

echo Creating Victim #2
docker run -itd --name busybox-victim-2 busybox
echo Creating Victim #2 DONE!!!

echo Creating Victim #3
docker run -itd --name busybox-victim-3 busybox
echo Creating Victim #3 DONE!!!

echo Creating Victim #4
docker run -itd --name busybox-victim-4 busybox
echo Creating Victim #4 DONE!!!

echo Creating Victim #5
docker run -itd --name busybox-victim-5 busybox
echo Creating Victim #5 DONE!!!
