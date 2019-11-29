# ####################################
# 1st Image Manager
# ####################################


IMG_PREFIX	:= open-helper/1st
IMG_VER			:= latest


# ####################################
# Dashboard AREA
# ####################################
build:
	docker build -t $(IMG_PREFIX)/node-onbuild:$(IMG_VER) -f ./node/onbuild.dockerfile node
