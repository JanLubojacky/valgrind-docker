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

### Clone this repo to your local machine
```bash
git clone https://github.com/JanLubojacky/valgrind-docker.git
```

### If you dont have docker
```bash
brew install docker
```
- if docker buildx is not part of your docker installation, you can install it with
- if you installed docker with docker desktop, you dont need to install docker buildx
```bash
brew install docker-buildx
```

### Install colima
- colima provides container runtimes
- alternatively you can also use docker desktop
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

### Docker image with C compiler and valgrind
- After colima is installed, you can use docker commands
- Pull a docker image with c compiler and valgrind from docker hub
```bash
docker pull dliu/ubuntu-gcc-valgrind
```

- Setup the paths inside Dockerfile to lead to your script

### Running your code
- `run_container.sh` is provided to build the container and compile & run your code with one command
- your code is compiled when building the container and run when running the container
- it will likely be necessary to make `run_container.sh` executable, you can do this with `chmod +x run_container.sh`
- run the container
```bash
./run_container.sh
```
