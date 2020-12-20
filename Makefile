# DOCKER
CC=./docker/cross
CROSS=./docker/cross
NC=./docker/native
NATIVE=./docker/native
PRG=./docker/purge
PURGE=./docker/purge
ETR=./docker/enter
ENTER=./docker/enter
PL=./docker/pull
PULL=./docker/pull
SUP=./docker/setup
SETUP=./docker/setup
CHSE=./docker/choose
CHOOSE=./docker/choose
UP=./docker/update
UPDATE=./docker/update
CLEAN=$(shell rm -f Dockerfile* *.yml)

help:
	@echo
	@echo "\e[1;32mDOCKER ARM IMAGE BUILDER\e[0m"
	@echo
	@echo "Create userdata file: "
	@echo 
	@echo "  make config           Select which distribution you would like to use"
	@echo 
	@echo "Outside container: "
	@echo
	@echo "  make cross            Create docker container for cross compiling"
	@echo "  make native           Create docker container for native compiling"
	@echo "  make enter            If exited re-enter container"
	@echo "  make purge            Purge said container"
	@echo "  make cleanup          Remove docker files"
	@echo
	@echo "Inside container: "
	@echo
	@echo "  make setup            Create docker Makefiles"
	@echo "  make pull             Update builder"
	@echo
	@echo "Updating addon: "
	@echo
	@echo "  make update           Updates the scripts, functions and makefile"
	@echo
	@echo "For details consult the README.md"
	@echo

config:
	# Debian or Ubuntu ..?
	@chmod +x ${CHSE}
	@${CHOOSE} -h

debian:
	#
	@chmod +x ${CHSE}
	@${CHOOSE} -1

ubuntu:
	#
	@chmod +x ${CHSE}
	@${CHOOSE} -2

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

enter:
	# Entering ...
	@chmod +x ${ETR}
	@${ENTER}

pull:
	# Updating ...
	@chmod +x ${PL}
	@${PULL}

setup:
	# Creating docker Makefiles ...
	@chmod +x ${SUP}
	@${SETUP}

cleanup:
	# Removing docker files ...
	@${CLEAN}

update:
	# Updating addon ...
	@chmod +x ${UP}
	@${UPDATE}
