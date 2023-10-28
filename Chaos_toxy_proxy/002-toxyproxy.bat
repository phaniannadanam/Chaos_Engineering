:: Start the Toxiproxy container
docker run -d --name toxiproxy -p 8474:8474 -p 8080:8080 shopify/toxiproxy

:: Allow some time for Toxiproxy to start
timeout /t 5

:: Set up a new proxy for the victim service
docker exec toxiproxy toxiproxy-cli create victim -l 0.0.0.0:8080 -u host.docker.internal:80

:: Introduce a latency of 5000ms (5 seconds)
docker exec toxiproxy toxiproxy-cli toxic add victim -t latency -a latency=5000
