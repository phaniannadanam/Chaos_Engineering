@echo off

REM Create the Toxiproxy container
docker run -d --name toxiproxy -p 8474:8474 -p 8080:8080 shopify/toxiproxy:latest

REM Give a moment for toxiproxy to start up
timeout /t 5

REM Add a proxy for our nginx server
curl -X POST localhost:8474/proxies -d "{ \"name\": \"nginx_proxy\", \"listen\": \"[::]:8080\", \"upstream\": \"nginx-victim:80\" }"

REM Introduce chaos (e.g., latency of 1000ms)
curl -X POST localhost:8474/proxies/nginx_proxy/toxics -d "{ \"name\": \"latency_downstream\", \"type\": \"latency\", \"stream\": \"downstream\", \"latency\": 1000 }"
