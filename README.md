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
