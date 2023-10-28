@echo off
setlocal

:: Create a volume for nginx content
docker volume create nginx-content

:: Setting paths based on the current directory of the batch script
set "SCRIPT_DIR=%~dp0"
set "INDEX_PATH=%SCRIPT_DIR%index.html"
set "NGINX_CONFIG_PATH=%SCRIPT_DIR%nginx.conf"

:: Copy custom index.html and nginx.conf to the Docker volume
docker run --rm -v nginx-content:/data -v %INDEX_PATH%:/index.html busybox cp /index.html /data/index.html
docker run --rm -v nginx-content:/data -v %NGINX_CONFIG_PATH%:/nginx.conf busybox cp /nginx.conf /data/nginx.conf

:: Run the nginx victim container
docker run -itd --name nginx-victim -v nginx-content:/usr/share/nginx/html:ro -v nginx-content:/etc/nginx:ro nginx:latest

echo "Nginx Victim container started."
endlocal
