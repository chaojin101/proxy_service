## feature

make server become a proxy server.

## Config

edit main.sh, change while_ip to the proxy_pool_console program's ip

## Run with docker

build a image
```sh
docker build -t proxy_service:1.0 .
```

run the image in a container
```sh
docker run --name proxy_service -p 7890:7890 -d proxy_service:1.0
```

whole command (copy and paste will run all the command)
```sh
docker build -t proxy_service:1.0 .
docker run --name proxy_service -p 7890:7890 -d proxy_service:1.0


```
## Rebuild and run

whole command (copy and paste will run all the command)
```sh
docker stop proxy_service
docker container rm proxy_service
docker image rm proxy_service:1.0
docker build -t proxy_service:1.0 .
docker run --name proxy_service -p 7890:7890 -d proxy_service:1.0


```

## Usage

assume public ip is 55.55.55.55

listening port is 7890

white ip is 0.0.0.0

using python program to use this proxy service

```
pip install requests
```

```py
import requests

r = requests.get('https://httpbin.org/ip')
print(r.json())

r = requests.get('https://httpbin.org/ip', proxies={'https': '55.55.55.55:7890'})
print(r.json())
```

## Description

image tag:
```sh
proxy_service:1.0
```

container name:
```sh
proxy_service
```

listening port:
```sh
7890
```

the proxy pragram used:
```sh
https://github.com/abhinavsingh/proxy.py
```