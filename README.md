# Run with docker

build a image
```sh
docker build -t proxy_service:1.0 .
```

run the image in a container
```sh
docker run --name proxy_service -p 7890:7890 -d proxy_service:1.0
```