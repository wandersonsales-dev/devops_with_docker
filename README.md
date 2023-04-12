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
