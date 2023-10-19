@echo off

REM Define parameters
set DURATION=60s
set MEMORY_SIZE=1G

REM Execute stress-ng
stress-ng --vm 1 --vm-bytes %MEMORY_SIZE% --verify --timeout %DURATION% --metrics
