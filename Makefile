# DOCKER
PL=./docker/pull
PULL=./docker/pull
NC=./docker/native
NATIVE=./docker/native
PRG=./docker/purge
PURGE=./docker/purge
PRGA=./docker/purge-all
PURGEALL=./docker/purge-all
UP=./docker/update
UPDATE=./docker/update
ETR=./docker/enter
ENTER=./docker/enter
START=$(shell docker container start arm-img-builder > /dev/null 2>&1)
STOP=$(shell docker container stop arm-img-builder > /dev/null 2>&1)
CLEAN=$(shell rm -f *.yml)

help:
	@echo
	@echo "\e[1;32mDOCKER ARM IMAGE BUILDER\e[0m"
	@echo 
	@echo "Outside container: "
	@echo
	@echo "  make pull             Create docker container"
	@echo "  make cleanup          Remove docker file"
	@echo "  make enter            If exited re-enter container"
	@echo "  make start            Start container"
	@echo "  make stop             Stop container"
	@echo "  make purge            Purge said container"
	@echo "  make purge-all        Purge container and prune volumes"
	@echo
	@echo "Inside container: "
	@echo
	@echo "  make update           Update builders, makefile and scripts"
	@echo
	@echo "For details consult the README.md"
	@echo

pull:
	# Creating container ...
	@chmod +x ${PL}
	@${PULL}

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

update:
	# Updating container ...
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
