@echo off
REM This script stops the running toxiproxy container

docker stop toxiproxy
docker rm toxiproxy
