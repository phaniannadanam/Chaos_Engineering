@echo off
REM This script resets all the chaos settings on the proxy

toxiproxy-cli.exe toxic remove proxy_nginx -n latency
toxiproxy-cli.exe toxic remove proxy_nginx -n bandwidth
toxiproxy-cli.exe toxic remove proxy_nginx -n slow_close
