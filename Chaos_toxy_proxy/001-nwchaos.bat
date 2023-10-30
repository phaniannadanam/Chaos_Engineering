@echo off
REM This script is to run the toxiproxy container

docker run -d --name toxiproxy -p 8474:8474 -p 8888:8888 shopify/toxiproxy:latest

REM After running the container, wait for a few seconds
timeout /t 5

REM Set up a proxy with latency
toxiproxy-cli.exe create proxy_nginx -l 0.0.0.0:8888 -u host.docker.internal:80
toxiproxy-cli.exe toxic add proxy_nginx -t latency -a latency=1000
