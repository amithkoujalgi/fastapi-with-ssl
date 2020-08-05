docker build --no-cache -t testssl .
docker run -p 80:80 -p 443:443 -p 8000:8000 testssl:latest
docker ps