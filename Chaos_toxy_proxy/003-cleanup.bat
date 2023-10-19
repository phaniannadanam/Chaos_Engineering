@echo off

REM Stop and remove the Toxiproxy container
docker stop toxiproxy
docker rm toxiproxy

REM Stop and remove the nginx victim
docker stop nginx-victim
docker rm nginx-victim
