# ####################################
# Name: dockerfiles
# FileVersion: 20191129
# ####################################


DK	:= docker
DC	:= docker-compose
DK_EXEC := docker exec -it

DATA_SUF = $(shell date +"%Y.%m.%d.%H.%M.%S"


# ####################################
# Dashboard AREA
# ####################################
build:
	make -C os $@
	make -C 1st $@

status:
	docker images | grep open-helper


# ####################################
# Utils AREA
# ####################################
clean:
	rm -rvf *.bak *.log
	-$(DK) ps -a | grep Exited | awk '{print $$1}' | xargs $(DK) rm
	-$(DK) images | grep "^<none>" | awk '{print $$3}' | xargs $(DK) rmi
