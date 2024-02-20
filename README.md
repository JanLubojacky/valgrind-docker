### Clone this repo to your machine
```bash
git clone https://github.com/JanLubojacky/valgrind-docker.git
```

### If you dont have docker

- you can install it via docker desktop [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)
- for docker desktop you can simply start or close the docker app to start/close docker
- now docker ps should show you the list of running containers and not an error

```sh
docker ps
```

### Docker image with C compiler and valgrind
- in folder with this Dockerfile, build the container and name it valgrind
```sh
docker build --tag valgrind .
```

- enter the container shell, and mount the volume with your c code, the path to your homework should be a full path, the command below assumes that you are running this from this folder
```sh
docker run -it -v "$(pwd)"/homework:/home valgrind
```
- And now you should be inside the container shell and can compile your code with

```sh
gcc -pedantic -Wall -Werror -std=c99 -g -o test test.c
```

- and run it with or without valgrind as

```sh
./test
```
or
```sh
valgrind --leak-check=full ./test
```
```
- as the volume is mounted inside the container any changes made to the files inside
- the container shell can be exited with <Control + D> or the `exit` command
