# DOCKER
CC=./docker/cross
CROSS=./docker/cross
NC=./docker/native
NATIVE=./docker/native
PRG=./docker/purge
PURGE=./docker/purge
PRGA=./docker/purge-all
PURGEALL=./docker/purge-all
ETR=./docker/enter
ENTER=./docker/enter
PL=./docker/pull
PULL=./docker/pull
UP=./docker/update
UPDATE=./docker/update
START=$(shell docker container start arm-img-builder > /dev/null 2>&1)
STOP=$(shell docker container stop arm-img-builder > /dev/null 2>&1)
CLEAN=$(shell rm -f Dockerfile* *.yml)

help:
	@echo
	@echo "\e[1;32mDOCKER ARM IMAGE BUILDER\e[0m"
	@echo 
	@echo "Outside container: "
	@echo
	@echo "  make cross            Create docker container for cross compiling"
	@echo "  make native           Create docker container for native compiling"
	@echo "  make cleanup          Remove docker files"
	@echo "  make enter            If exited re-enter container"
	@echo "  make start            Start container"
	@echo "  make stop             Stop container"
	@echo "  make purge            Purge said container"
	@echo "  make purge-all        Purge container and prune volumes"
	@echo
	@echo "Inside container: "
	@echo
	@echo "  make pull             Update builders"
	@echo "  make update           Update makefile and scripts"
	@echo
	@echo "For details consult the README.md"
	@echo

cross:
	# Cross compiling ...
	@chmod +x ${CC}
	@${CROSS}

native:
	# Native compiling ...
	@chmod +x ${NC}
	@${NATIVE}

purge:
	# Purging ...
	@chmod +x ${PRG}
	@${PURGE}
	
purge-all:
	# Purging all ...
	@chmod +x ${PRGA}
	@${PURGEALL}

enter:
	# Entering ...
	@chmod +x ${ETR}
	@${ENTER}

pull:
	# Updating ...
	@chmod +x ${PL}
	@${PULL}

update:
	# Updating Makefile and scripts ...
	@chmod +x ${UP}
	@${UPDATE}

cleanup:
	# Removing docker files ...
	@${CLEAN}

start:
	# Container started ...
	@${START}

stop:
	# Container stopped ...
	@${STOP}
