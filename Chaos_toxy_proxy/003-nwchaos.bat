@echo off
REM This script introduces latency to the traffic

toxiproxy-cli.exe toxic add proxy_nginx -t latency -a latency=3000
