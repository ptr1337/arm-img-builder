## Arm-Img-Builder

**All docker work done by:** https://github.com/ptTrR/arm-image-builder-docker

### Builders:
* https://github.com/pyavitz/rpi-img-builder
* https://github.com/pyavitz/debian-image-builder

The initial docker installation and setup still applies so I suggest you
read the [README](https://github.com/ptTrR/arm-image-builder-docker/blob/main/README.md) before trying to use this.

---

### Host Dependencies
```sh
docker docker-compose qemu qemu-user-static binfmt-support make
```
### Correct qemu errors
```sh
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```

### Makefile
```sh
DOCKER ARM IMAGE BUILDER

Outside container: 

  make pull             Create docker container
  make cleanup          Remove docker file
  make enter            If exited re-enter container
  make start            Start container
  make stop             Stop container
  make purge            Purge said container
  make purge-all        Purge container and prune volumes

Inside container: 

  make update           Update builders, makefile and scripts

For details consult the README.md
```

After `make pull` you should find yourself inside the container, at that time run `make update`.
From that point, enter the builder of choice and execute the `./install` script.

### External setup
```sh
If running on a SBC or lacking internal space, I suggest setting up an
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
