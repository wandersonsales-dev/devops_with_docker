# DevOps With Docker

## Exercise 1.1

```bash
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                          PORTS     NAMES
5d7773b6991f   nginx     "/docker-entrypoint.…"   16 minutes ago   Exited (0) About a minute ago             serene_chaplygin
41fa125fd892   nginx     "/docker-entrypoint.…"   16 minutes ago   Exited (0) About a minute ago             xenodochial_khorana
b011333b669f   nginx     "/docker-entrypoint.…"   16 minutes ago   Up 16 minutes                   80/tcp    jolly_ptolemy
```

## Exercise 1.2

```bash
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

```bash
$ docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

## Exercise 1.3

### Commands

```bash
$ docker container run -it --rm --name secret devopsdockeruh/simple-web-service:ubuntu
$ docker exec -it secret bash
root@0568fed2813a:/usr/src/app# tail -f ./text.log
```

### Output

```bash
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

## Exercise 1.4

### Commands

```bash
$ docker run -d -it --name ex_1_4 ubuntu
$ docker exec -it ex_1_4 bash
root@2d441a5fd9a7:/# apt update
root@2d441a5fd9a7:/# apt install curl
$ docker exec -it ex_1_4 sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

### Output

```bash
Input website:
helsink.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="https://helsink.fi/">here</a>.</p>
<hr>
<address>Apache/2.4.18 (Ubuntu) Server at helsink.fi Port 80</address>
</body></html>
```

## Exercise 1.5

### Commands

```bash
$ docker pull devopsdockeruh/simple-web-service:ubuntu
$ docker pull devopsdockeruh/simple-web-service:alpine

$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB

$ docker run -d -it devopsdockeruh/simple-web-service:ubuntu
$ docker run -d -it devopsdockeruh/simple-web-service:alpine
$ docker container ls
CONTAINER ID   IMAGE                                      COMMAND                 CREATED          STATUS          PORTS     NAMES
5f1a1fa09a60   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   10 seconds ago   Up 9 seconds              modest_albattani
ead15a79336b   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   24 seconds ago   Up 23 seconds             crazy_dirac

$ docker exec -it modest_albattani sh
/usr/src/app # tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'

$ sudo docker exec -it crazy_dirac bash
root@ead15a79336b:/usr/src/app# tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

## Exercise 1.6

### Commands

```bash
$ docker run -it devopsdockeruh/pull_exercise
Give me the password: basics

You found the correct password. Secret message is:
"This is the secret message"
```

## Exercise 1.7

### Commands

```bash
$ docker build . -t curler
$ docker run -it curler
```

### Dockerfile

```Dockerfile
# Starts from the ubuntu:20.04 image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir.
WORKDIR /usr/src/app

# Execute a command with `/bin/bash -c` prefix
RUN apt update
RUN apt install curl -y

# Copy the script.sh file from this location to /usr/src/app creating /usr/src/app/script.sh
COPY script.sh .

# Execute script.sh on container start
CMD ./script.sh
```

## Exercise 1.8

### Commands

```bash
$ docker build . -t web-server
$ docker run web-server
```

### Dockerfile

```Dockerfile
# Starts from the devopsdockeruh/simple-web-service:alpine image
FROM devopsdockeruh/simple-web-service:alpine

# Execute the server command on container start
CMD server

```

## Exercise 1.9

### Commands

```bash
$ touch text.log
$ docker run -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
```

### text.log

```
2023-04-14 02:33:16 +0000 UTC
2023-04-14 02:33:18 +0000 UTC
2023-04-14 02:33:20 +0000 UTC
2023-04-14 02:33:22 +0000 UTC
2023-04-14 02:33:24 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-04-14 02:33:26 +0000 UTC
2023-04-14 02:33:28 +0000 UTC
```

## Exercise 1.10

### Commands

```bash
$ docker run -p 8080:8080 devopsdockeruh/simple-web-service server
```
