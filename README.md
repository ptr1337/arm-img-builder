***WARNING: Use at your own risk! beta***

# Addon for the Docker Arm Image Builder

https://github.com/ptTrR/arm-image-builder-docker

```sh
DOCKER ARM IMAGE BUILDER

Outside container: 

  make config           Select which distribution you would like to use
  make cross            Create docker container for cross compiling
  make native           Create docker container for native compiling
  make enter            If exited re-enter container
  make purge            Purge said container
  make cleanup          Remove docker files

Inside container: 

  make setup            Create docker Makefiles
  make pull             Update builder

For details consult the README.md

```

```sh
The main purpose of the Makefile is to remove the need for manual setup
Supported: debian:buster-slim and ubuntu:20.04
```

The initial docker installation and setup still applies so I suggest you
read the [README](https://github.com/ptTrR/arm-image-builder-docker/blob/main/README.md) before trying to use this.

### Installation:
`git clone --recurse-submodules https://github.com/ptTrR/arm-image-builder-docker.git && cd arm-image-builder-docker && git submodule update --remote`

`git clone https://github.com/pyavitz/docker-addon.git && mv -f docker-addon/{docker,Makefile} . && rm -fdr docker-addon && make cleanup`
