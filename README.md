***WARNING: Use at your own risk! beta***

# Addon for the Docker Arm Image Builder

https://github.com/ptTrR/arm-image-builder-docker

```sh
DOCKER ARM IMAGE BUILDER

Outside container: 

  make cross            Create docker container for cross compiling
  make native           Create docker container for native compiling
  make enter            If exited re-enter container
  make purge            Purge said container
  make cleanup          Remove docker files

Inside container: 

  make setup            Create docker Makefiles
  make pull             Update builders

For details consult the README.md
```

```sh
The main purpose of the Makefile is to remove the need for manual setup
```

The initial docker installation and setup still applies so I suggest you
read the [README](https://github.com/ptTrR/arm-image-builder-docker/blob/main/README.md) before trying to use this.

### External 
```sh
If compiling native or lacking internal space, I suggest setting up an
external hard drive.

Example:
sudo nano /etc/docker/daemon.json
{
    "graph": "/mnt/external/docker-base"
}
sudo systemctl restart docker
```
