@echo off

REM Check the status of our nginx server
echo Status for nginx-victim:
docker inspect --format="{{.State.Status}}" nginx-victim
