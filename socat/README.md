# docker-socat

## Getting Started

Forward localhost 8000 to 4000
```
docker run --name adbd --network host --restart=always -d quanlong/socat tcp-l:4000,fork,reuseaddr tcp:localhost:8000
```
