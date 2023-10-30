@echo off
REM This script restricts bandwidth

toxiproxy-cli.exe toxic add proxy_nginx -t bandwidth -a rate=100
