# Addon for the Arm Image Builder Docker

**All docker work done by:** https://github.com/ptTrR/arm-image-builder-docker

### Builders:
* https://github.com/pyavitz/rpi-img-builder
* https://github.com/pyavitz/debian-image-builder

The initial docker installation and setup still applies so I suggest you
read the [README](https://github.com/ptTrR/arm-image-builder-docker/blob/main/README.md) before trying to use this.

---

### Host
* Dependencies
```sh
docker docker-compose qemu qemu-user-static binfmt-support
```

### Basics
```ssh
All docker files are created on the fly depending on your choices 'make cross' or 'make native'.
At the end of execution you should then find yourself inside the container, at which point you
will need to run 'make update'.

From that point on, each builder "rpi-img-builder / debian-image-builder" function as they would
outside the container, minus the need for installing dependencies.

For each builder simply follow the directions in the README.md or run ‘make help’.
```

### Makefile
```sh
DOCKER ARM IMAGE BUILDER

Outside container: 

  make cross            Create docker container for cross compiling
  make native           Create docker container for native compiling
  make cleanup          Remove docker files
  make enter            If exited re-enter container
  make start            Start container
  make stop             Stop container
  make purge            Purge said container
  make purge-all        Purge container and prune volumes

Inside container: 

  make update           Update builders, makefile and scripts

For details consult the README.md
```

```sh
The main purpose of the Makefile is to remove the need for manual setup
```
### External setup
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

### Moving files
```sh
Example:
mv -f *img* /images/

This applies to anything created in the container.
```
