### If you dont have brew
- more info at https://brew.sh/
- brew is your friend, it will help you install all the tools you need
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### If you dont have git
- git should already be installed on your mac, if not, install it, you can do it with brew
- more info at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
```bash
brew install git
```

### Clone this repo to your machine
```bash
git clone https://github.com/JanLubojacky/valgrind-docker.git
```

### If you dont have docker

- you can either install it via docker desktop
- for docker desktop you can simply start or close the docker app to start/close docker

### or with colima
```bash
brew install docker
```
- if docker buildx is not part of your docker installation, you can install it with
```bash
brew install docker-buildx
```
- colima provides container runtimes
- more info https://github.com/abiosoft/colima
```bash
brew install colima
```
- start colima
```bash
colima start
```
- and you can stop it with
```bash
colima stop
```
- now docker ps should show you the list of running containers
```sh
docker ps
```

### Docker image with C compiler and valgrind
- in folder with this Dockerfile, build the container
```sh
docker build .
```
- form arm architectures (m1 processor) select the arm platfrom
```sh
docker build --platform=linux/arm64 .
```
- enter the container shell, and mount the volume with your c code

docker run -it -v /Users/lubojack/Personal/valgrind-docker/homework:/home c_container

- And now you should be inside the container shell and can compile your code with

```sh
gcc -pedantic -Wall -Werror -std=c99 -g -o test test.c
```

- and run it with or without valgrind as

```sh
./test
```
```sh
valgrind --leak-check=full ./test
```
```
- as the volume is mounted inside the container any changes made to the files inside
- the container shell can be exited with <Control + D> or the `exit` command
