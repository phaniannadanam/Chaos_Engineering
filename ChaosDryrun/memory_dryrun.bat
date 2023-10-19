@echo off

REM Use Pumba in dry-run mode to stress the memory of each victim container
for %%i in (1,2,3,4,5) do (
    set CONTAINER_NAME=busybox-victim-%%i
    echo Simulating memory stress for %CONTAINER_NAME% using Pumba in dry-run mode

    docker run --rm -v /var/run/docker.sock:/var/run/docker.sock gaiaadm/pumba --dry-run --log-level=info stress --duration 250s --stressors "vm 1 --vm-bytes 3.07G --vm-keep" %CONTAINER_NAME%
)

REM No need for 'timeout' since Pumba containers aren't actually doing anything long-running in dry-run mode
