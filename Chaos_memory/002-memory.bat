@echo off

REM Allocate about 95% of 3.84GiB which is approximately 3.65GiB
SET MEM_TO_ALLOCATE=3650M

FOR /L %%i IN (1,1,5) DO (
    SET CONTAINER_NAME=busybox-victim-%%i
    docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock gaiaadm/pumba stress ^
    --duration 250s ^
    --stressors "--vm 1 --vm-bytes %MEM_TO_ALLOCATE% --vm-keep" %CONTAINER_NAME% ^
)
