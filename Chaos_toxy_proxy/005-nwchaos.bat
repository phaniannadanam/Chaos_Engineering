@echo off
REM This script simulates slow connection closings

toxiproxy-cli.exe toxic add proxy_nginx -t slow_close -a delay=5000
