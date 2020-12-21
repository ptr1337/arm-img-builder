# Addon for the Arm Image Builder Docker

***All docker work done by:*** https://github.com/ptTrR/arm-image-builder-docker

### Builders:
* https://github.com/pyavitz/rpi-img-builder
* https://github.com/pyavitz/debian-image-builder

___

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

### Moving
```sh
Example:
mv rpi-3-debian-buster-5.10.1-v8-2020-12-21.img.xz /images/

This applies to anything created in container.
```
