# DevOps With Docker

## Exercises

### Exercise 1.1: Start 3 containers from image that does not automatically exit, such as nginx, detached.

```bash
$ docker container run -d nginx
$ docker container run -d nginx
$ docker container run -d nginx
```

```bash
$ docker container ls
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS     NAMES
5d7773b6991f   nginx     "/docker-entrypoint.…"   9 seconds ago    Up 8 seconds    80/tcp    serene_chaplygin
41fa125fd892   nginx     "/docker-entrypoint.…"   12 seconds ago   Up 10 seconds   80/tcp    xenodochial_khorana
b011333b669f   nginx     "/docker-entrypoint.…"   15 seconds ago   Up 14 seconds   80/tcp    jolly_ptolemy
```
