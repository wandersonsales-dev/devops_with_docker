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
