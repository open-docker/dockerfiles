# ####################################
# FileVersion: 20191129
# ####################################


# ####################################
# Dashboard AREA
# ####################################
build:
	make -C os $@
	make -C 1st $@

status:
	docker images | grep open-helper
