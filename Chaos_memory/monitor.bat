@echo off

SET log_file=container_memory_logs.txt

:loop
    cls
    echo Container Status:
    docker ps -a
    echo/
    echo Memory Usage:
    docker stats --no-stream
    timeout /t 5
GOTO loop
